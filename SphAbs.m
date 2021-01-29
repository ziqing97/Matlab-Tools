function[SA] = SphAbs(lambda1,lambda2,phi1,phi2)
% Eingabe: lambda1, lambda2, phi1, phi2: Länge und Breite von Beiden
% Punkten (in radiant)

% Ausgabe: sphärischer Abstand auf der Einheitskugel (in radiant)

SA = acos(sin(phi1) * sin(phi2) + cos(phi1) * cos(phi2) * cos(lambda1 - lambda2));
end