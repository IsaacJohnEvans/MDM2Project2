minklist = initial(Minklist, 1000);
scatter(minklist.pos(:,1), minklist.pos(:,2));
minklist = move(minklist, 1, 100);
scatter(minklist.pos(:,1), minklist.pos(:,2));