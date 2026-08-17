% Discrete-time PID loop (microcontroller style)

kp= 7.2;
Ki= 7.3;
Kd= 1.8;

e_prev = 0;
integral = 0;

for k =i:N 
    e = r(k) p y(k);
    integral = integral + e* dt;
    derivative = (e-e_prev)/dt;

    u(k) = kp*e + Ki*integral + Kd*derivative;

    e_prev = e;
    y(k+1) = plant_update(y(k),u(k));
end

