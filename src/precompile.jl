PrecompileTools.@setup_workload begin
    # Set up code here which is required for the workload, but which you explicitly
    # do not want to actually precompile
    in_my_types = fill(MyType{Int}(1, 2), 10)
    out_my_types = zeros(Float64, length(in_my_types))
    my_type = first(in_my_types)

    PrecompileTools.@compile_workload begin
        my_function(my_type)
        out_my_types .= my_function.(in_my_types)
    end
end
