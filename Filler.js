//Script to fill Online Course Evaluations
//Finds all of the buttons that belong to the same question and selects one randomly
//Probably manually check the correct ones for your year/gpa/expected grade though
//just copy and paste this in the chrome console and run it

//IIFE to avoid annoying scope issues
(() => {
	const getGroupsOfButtons = buttons => {
	let groups = []
	let current_group = []
	buttons.forEach(button => {
		//add it if the len is 0
		if (current_group.length === 0) {
			current_group.push(button)
		} else {
			//check it
			button.checked = true
			if (current_group[current_group.length - 1].checked) {
				//if its still checked, its independent
				groups.push(current_group)
				current_group = [button]
			} else {
				current_group.push(button)
			}
		}
	});
	return groups
}

const fillRandom = groupsOfButtons => groupsOfButtons.forEach(group => group[Math.floor(Math.random() * group.length)].checked = true)

fillRandom(getGroupsOfButtons(Array.from(document.getElementsByClassName('radio'))))

})();