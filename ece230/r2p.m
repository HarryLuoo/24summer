function result = r2p(z)
    result = struct('Mag', abs(z), 'Angle', angle(z) * 180 / pi);
end