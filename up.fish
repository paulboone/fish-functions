function up
  if test -e .rundir
    set rdir (cat .rundir)
  else if test -e ../.rundir
    set rdir (cat ../.rundir)/(basename (pwd))
  end
  rsync -avz --exclude=.DS_Store --exclude=output ./ $rdir
end
