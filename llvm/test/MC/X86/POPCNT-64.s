// RUN: llvm-mc -triple x86_64-unknown-unknown --show-encoding %s | FileCheck %s

// CHECK: popcntl %r13d, %r13d 
// CHECK: encoding: [0xf3,0x45,0x0f,0xb8,0xed]        
popcntl %r13d, %r13d 

// CHECK: popcntl 4096(%rax), %r13d
// CHECK: encoding: [0xf3,0x44,0x0f,0xb8,0xa8,0x00,0x10,0x00,0x00]
popcntl 4096(%rax), %r13d  

// CHECK: popcntl 64(%rdx,%rax), %r13d    
// CHECK: encoding: [0xf3,0x44,0x0f,0xb8,0x6c,0x02,0x40]
popcntl 64(%rdx,%rax), %r13d    

// CHECK: popcntl 64(%rdx,%rax,4), %r13d  
// CHECK: encoding: [0xf3,0x44,0x0f,0xb8,0x6c,0x82,0x40]
popcntl 64(%rdx,%rax,4), %r13d  

// CHECK: popcntq %r13, %r13 
// CHECK: encoding: [0xf3,0x4d,0x0f,0xb8,0xed]        
popcntq %r13, %r13 

// CHECK: popcntq 4096(%rax), %r13
// CHECK: encoding: [0xf3,0x4c,0x0f,0xb8,0xa8,0x00,0x10,0x00,0x00]
popcntq 4096(%rax), %r13        

// CHECK: popcntq 64(%rdx,%rax), %r13     
// CHECK: encoding: [0xf3,0x4c,0x0f,0xb8,0x6c,0x02,0x40]
popcntq 64(%rdx,%rax), %r13     

// CHECK: popcntq 64(%rdx,%rax,4), %r13   
// CHECK: encoding: [0xf3,0x4c,0x0f,0xb8,0x6c,0x82,0x40]
popcntq 64(%rdx,%rax,4), %r13   

// CHECK: popcntw %r13w, %r13w 
// CHECK: encoding: [0x66,0xf3,0x45,0x0f,0xb8,0xed]        
popcntw %r13w, %r13w 

// CHECK: popcntw 4096(%rax), %r13w
// CHECK: encoding: [0x66,0xf3,0x44,0x0f,0xb8,0xa8,0x00,0x10,0x00,0x00]
popcntw 4096(%rax), %r13w       

// CHECK: popcntw 64(%rdx,%rax), %r13w    
// CHECK: encoding: [0x66,0xf3,0x44,0x0f,0xb8,0x6c,0x02,0x40]
popcntw 64(%rdx,%rax), %r13w    

// CHECK: popcntw 64(%rdx,%rax,4), %r13w  
// CHECK: encoding: [0x66,0xf3,0x44,0x0f,0xb8,0x6c,0x82,0x40]
popcntw 64(%rdx,%rax,4), %r13w  

