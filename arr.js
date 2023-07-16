const commits = process.env.NODE_ENV.trim().split('\n').map(item => ({ sha: item }));
console.log(commits)