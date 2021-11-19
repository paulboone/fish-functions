function dl -d "based on a .rundir file, syncs the files in this directory from a remote location"
  if test -e .rundir
    set rdir (cat .rundir)
    rsync -avz --exclude=.DS_Store $rdir/ ./
  else if test -e ../.rundir
    set rdir (cat ../.rundir)
    rsync -avz --exclude=.DS_Store $rdir/(basename (pwd))/ ./
  end
end
