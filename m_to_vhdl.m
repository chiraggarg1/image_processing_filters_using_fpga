c=imread('F:\Filters\converting_image_to_hex\file.JPG');  

k=1;
for i=1:1:150 % image is written from the last row to the first row
for j=1:100
ir(k)=c(j,i,1);
ig(k)=c(j,i,2);
ib(k)=c(j,i,3);
k=k+1;
end
end
ir=uint8(ir);
ig=uint8(ig);
ib=uint8(ib);
z = ' ';
ir = dec2bin(ir);
for l = 1:15000
    z = z + ir(l) + '\n'; 
end
disp(z)
fidr = fopen('inputr.txt', 'wt');
fwrite(fidr,z) ;
fclose(fidr);
fidg = fopen('inputg.txt', 'wt');
fprintf(fidg,'%d\n', ig);
fclose(fidg);
fidb = fopen('inputb.txt', 'wt');
fprintf(fidb,'%d\n', ib);
fclose(fidb);