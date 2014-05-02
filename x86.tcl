#!/usr/bin/wish

package require Tk

wm title . "x86"

# Create a panedwindow
ttk::frame .f
ttk::panedwindow .f.pane -orient vertical

ttk::labelframe .f.pane.one -text "Register Initial Values" -width 100 -height 100

grid .f.pane.one -column -0 -row 0

ttk::label .f.pane.one.eaxlab -text "eax"
grid .f.pane.one.eaxlab -column 0 -row 0 -padx 3 -pady 3
ttk::entry .f.pane.one.eaxreg -width 8 -textvariable eaxi; set eaxi "00000000"
grid .f.pane.one.eaxreg -column 1 -row 0 -padx 3 -pady 3
ttk::frame .f.pane.one.empty1 -width 20
grid .f.pane.one.empty1 -column 2 -row 0
ttk::label .f.pane.one.ebxlab -text "ebx"
grid .f.pane.one.ebxlab -column 3 -row 0 -padx 3 -pady 3
ttk::entry .f.pane.one.ebxreg -width 8 -textvariable ebxi; set ebxi "00000000"
grid .f.pane.one.ebxreg -column 4 -row 0 -padx 3 -pady 3

ttk::label .f.pane.one.ecxlab -text "ecx"
grid .f.pane.one.ecxlab -column 0 -row 1 -padx 3 -pady 3
ttk::entry .f.pane.one.ecxreg -width 8 -textvariable ecxi; set ecxi "00000000"
grid .f.pane.one.ecxreg -column 1 -row 1 -padx 3 -pady 3
ttk::frame .f.pane.one.empty2 -width 20
grid .f.pane.one.empty2 -column 2 -row 1
ttk::label .f.pane.one.edxlab -text "edx"
grid .f.pane.one.edxlab -column 3 -row 1 -padx 3 -pady 3
ttk::entry .f.pane.one.edxreg -width 8 -textvariable edxi; set edxi "00000000"
grid .f.pane.one.edxreg -column 4 -row 1 -padx 3 -pady 3

ttk::label .f.pane.one.ebplab -text "ebp"
grid .f.pane.one.ebplab -column 0 -row 2 -padx 3 -pady 3
ttk::entry .f.pane.one.ebpreg -width 8 -textvariable ebpi; set ebpi ""
grid .f.pane.one.ebpreg -column 1 -row 2 -padx 3 -pady 3
ttk::frame .f.pane.one.empty3 -width 20
grid .f.pane.one.empty3 -column 2 -row 2
ttk::label .f.pane.one.esplab -text "esp"
grid .f.pane.one.esplab -column 3 -row 2 -padx 3 -pady 3
ttk::entry .f.pane.one.espreg -width 8 -textvariable espi; set espi ""
grid .f.pane.one.espreg -column 4 -row 2 -padx 3 -pady 3



ttk::labelframe .f.pane.mid -text "Operation" -width 100 -height 30
tk::text .f.pane.mid.t -width 30 -height 2
.f.pane.mid.t insert 1.0 "xor eax,eax"
grid .f.pane.mid -column 0 -row 0
grid .f.pane.mid.t -column 0 -row 0


ttk::labelframe .f.pane.two -text "Result Values" -width 100 -height 100

grid .f.pane.two -column 0 -row 0

ttk::label .f.pane.two.eaxlab -text "eax"
grid .f.pane.two.eaxlab -column 0 -row 0 -padx 3 -pady 3
ttk::entry .f.pane.two.eaxreg -width 8 -textvariable eaxo; set eaxo ""
grid .f.pane.two.eaxreg -column 1 -row 0 -padx 3 -pady 3
ttk::frame .f.pane.two.empty1 -width 20
grid .f.pane.two.empty1 -column 2 -row 0
ttk::label .f.pane.two.ebxlab -text "ebx"
grid .f.pane.two.ebxlab -column 3 -row 0 -padx 3 -pady 3
ttk::entry .f.pane.two.ebxreg -width 8 -textvariable ebxo; set ebxo ""
grid .f.pane.two.ebxreg -column 4 -row 0 -padx 3 -pady 3

ttk::label .f.pane.two.ecxlab -text "ecx"
grid .f.pane.two.ecxlab -column 0 -row 1 -padx 3 -pady 3
ttk::entry .f.pane.two.ecxreg -width 8 -textvariable ecxo; set ecxo ""
grid .f.pane.two.ecxreg -column 1 -row 1 -padx 3 -pady 3
ttk::frame .f.pane.two.empty2 -width 20
grid .f.pane.two.empty2 -column 2 -row 1
ttk::label .f.pane.two.edxlab -text "edx"
grid .f.pane.two.edxlab -column 3 -row 1 -padx 3 -pady 3
ttk::entry .f.pane.two.edxreg -width 8 -textvariable edxo; set edxo ""
grid .f.pane.two.edxreg -column 4 -row 1 -padx 3 -pady 3

ttk::label .f.pane.two.ebplab -text "ebp"
grid .f.pane.two.ebplab -column 0 -row 2 -padx 3 -pady 3
ttk::entry .f.pane.two.ebpreg -width 8 -textvariable ebpo; set ebpo ""
grid .f.pane.two.ebpreg -column 1 -row 2 -padx 3 -pady 3
ttk::frame .f.pane.two.empty3 -width 20
grid .f.pane.two.empty3 -column 2 -row 2
ttk::label .f.pane.two.esplab -text "esp"
grid .f.pane.two.esplab -column 3 -row 2 -padx 3 -pady 3
ttk::entry .f.pane.two.espreg -width 8 -textvariable espo; set espo ""
grid .f.pane.two.espreg -column 4 -row 2 -padx 3 -pady 3

ttk::label .f.pane.two.eflagslab -text "eflags"
grid .f.pane.two.eflagslab -column 0 -row 3 -padx 3 -pady 3
ttk::entry .f.pane.two.eflags  -textvariable eflags; set eflags "0000"
grid .f.pane.two.eflags -column 1 -columnspan 4 -row 3 -padx 3 -pady 3


ttk::button .f.pane.button -text "x86!" -command x86

.f.pane add .f.pane.one
.f.pane add .f.pane.mid
.f.pane add .f.pane.two
.f.pane add .f.pane.button

pack .f.pane -expand 1 -fill both
pack .f -expand 1 -fill both

proc x86 {} {
    generate_code
    exec nasm -f elf file.s
    exec gcc -m32 -o file file.o
    set result [split [exec ./file] "\n"]
    set ::eaxo [lindex $result 0]
    set ::ebxo [lindex $result 1]
    set ::ecxo [lindex $result 2]
    set ::edxo [lindex $result 3]
    set ::ebpo [lindex $result 4]
    set ::espo [lindex $result 5]
    set ::eflags [hex2bin [lindex $result 6]]
}
proc generate_code {} {
    set fo [open "file.s" w]
    puts $fo "extern  printf"
    puts $fo ""
    puts $fo "section .data"
    puts $fo "    msg     db      \"%08X\",0xA,0"
    puts $fo "section .text"
    puts $fo "    global  main"
    puts $fo "main:"
    puts $fo "    enter 0,0"
    puts $fo "    pusha"
    puts $fo ""
    puts $fo ""
    puts $fo "    mov eax,0x$::eaxi"
    puts $fo "    mov ebx,0x$::ebxi"
    puts $fo "    mov ecx,0x$::ecxi"
    puts $fo "    mov edx,0x$::edxi"
    if {$::ebpi ne ""} {
        puts $fo "    mov ebp,0x$::ebpi"
    }
    if {$::espi ne ""} {
        puts $fo "    mov esp,0x$::espi"
    }
    puts $fo ""
    puts $fo ""
    set operation [.f.pane.mid.t get 1.0 end]
    puts $fo "    $operation"
    puts $fo ""
    puts $fo "    pushf"
    puts $fo "    push esp"
    puts $fo "    push ebp"
    puts $fo "    push edx"
    puts $fo "    push ecx"
    puts $fo "    push ebx"
    puts $fo "    push eax"
    puts $fo ""
    puts $fo "    pop eax"
    puts $fo "    call print_register"
    puts $fo "    pop eax"
    puts $fo "    call print_register"
    puts $fo "    pop eax"
    puts $fo "    call print_register"
    puts $fo "    pop eax"
    puts $fo "    call print_register"
    puts $fo "    pop eax"
    puts $fo "    call print_register"
    puts $fo "    pop eax"
    puts $fo "    call print_register"
    puts $fo "    pop eax"
    puts $fo "    call print_register"
    puts $fo ""
    puts $fo "    popa"
    puts $fo "    mov     eax,0"
    puts $fo "    leave"
    puts $fo "    ret"
    puts $fo ""
    puts $fo ""
    puts $fo "print_register:"
    puts $fo "    push    ebp"
    puts $fo "    mov     ebp,esp"
    puts $fo "    push    eax"
    puts $fo "    push    msg"
    puts $fo "    call    printf"
    puts $fo "    add     esp,8"
    puts $fo "    mov     esp,ebp"
    puts $fo "    pop     ebp"
    puts $fo "    ret"
    puts $fo ""
    puts $fo ""

    close $fo
}

proc hex2bin {bin} {
    return [dec2bin [hex2dec $bin]]
}

proc hex2dec {largeHex} {
    set res 0
    foreach hexDigit [split $largeHex {}] {
        set new 0x$hexDigit
        set res [expr {16*$res + $new}]
    }
    return $res
}

proc dec2bin {i} {
    #returns a string, e.g. dec2bin 10 => 1010 
    set res {} 
    while {$i>0} {
        set res [expr {$i%2}]$res
        set i [expr {$i/2}]
    }
    if {$res == {}} {set res 0}
    return $res
}
