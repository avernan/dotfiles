if getline(1) =~? '.*python3.*'
    let b:ale_python_pylint_executable = 'pylint3'
endif

