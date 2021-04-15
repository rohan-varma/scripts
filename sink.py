import torch
import torch.nn as nn
from torch.autograd import Function


class PassThrough(Function):
    @staticmethod
    def forward(ctx, *inputs):
        return inputs

    @staticmethod
    def backward(ctx, *grad_outputs):
        print(f"grad_outputs {grad_outputs}")
        print(f"type is {type(grad_outputs)}")
        # Use gradients to search through the graph as in
        # https://gist.github.com/rohan-varma/7c8dab3635193c04c607e67c4951f519
        return grad_outputs


class MyModel(nn.Module):
    def __init__(self):
        super().__init__()
        self.a = nn.Linear(1, 1, bias=False)
        self.b = nn.Linear(1, 1, bias=False)

    def forward(self, x):
        a, b = self.a(x), self.b(x)
        # Get tensors from tuple. This would be a more general call to
        # _find_tensors.
        ret = a, b
        new_a, new_b = PassThrough.apply(a, b)
        # Reconstruct tuple from output tensors. This would require a more general
        # function that repacks the tensor(s) into the data structure.
        ret = new_a, new_b
        return ret


model = MyModel()
inp = torch.ones(1)
out = model(inp)
loss = out[0].sum()
print("Calling backward...")
loss.backward()
print("Done with bwd")
