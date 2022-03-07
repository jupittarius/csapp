#include "mmu.h"
#include "../memory/dram.h"

// memory management unit

// virtual address to physical address
uint64_t va2pa(uint64_t vaddr){
    return vaddr % MM_LEN;
}