switch (bstate) {
	case bstates.attacking:
		break;
	case bstates.fleeing:
		break;
	case bstates.patroling:
		patrol_bee()
		break;
	default:
		patrol_bee();
		break;
}