//
//  main.m
//  NSArray
//
//  Created by Usuario invitado on 23/02/24.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]){
    @autoreleasepool {
        //NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
         NSMutableArray *array;
         array = [[NSMutableArray alloc] init];
         int i;
         for (i = 0; i < 10; i++)
         {
             NSNumber *newNumber = [[NSNumber alloc] initWithInt:(i * 3)];
            // [array addObject:newNumber];
             array[i] = newNumber;
         }
         for ( i = 0; i < 10; i++) {
             //NSNumber *numberToPrint = [array objectAtIndex:i];
            // NSLog(@"The number at index %d is %@",  i, numberToPrint);
             NSLog(@"The number at index %d is %@",  i, array[i]);
         }
        
        NSNumber *num = [[NSNumber alloc]initWithInt:100];
        [array addObject:num];
        NSLog(@"Mostrar el ARREGLO SIN USAR CICLO");
        NSLog(@"%@",array);
        
        NSLog(@"Numero de elementos %lu",(unsigned long)[array count]);
        
        [array insertObject:@"200" atIndex:5];
        NSLog(@"%@",array);

        
        NSArray* reversedArray = [[array reverseObjectEnumerator] allObjects];
       
        //Invertir un array
        NSLog(@"%@",reversedArray);
        
        
        //INSERTAR DATOS ALEATORIOS DE 3 DIGITOS
        //MOSTRAR CON FOR IN
        
        //DAMOS MEMORIA AL ARRAY MUTABLE VECTOR
        NSMutableArray *vector = [[NSMutableArray alloc]init];
    
        //PEDIMOS AL USUARIO LA CANTIDAD DE ELEMENTOS QUE VA A TENER EL ARRAY
        int nDeElementos = 0;
        printf("Ingrese la cantidad de numeros aleatorios para el array\n");
        scanf("%d",&nDeElementos);
        
        
        //CON UN FOR INGRESAMOS ALEATORIAMENTE ELEMENTOS AL ARRAY
        for (int i = 0; i <= nDeElementos; i++) {
            NSNumber *ndatos = [[NSNumber alloc]initWithInt:arc4random_uniform(200) + 100];
            [vector addObject:ndatos];
        }
        
        //MOSTRAMOS CON UN FOR IN DONDE EL ELEMENT ES CADA NUMERO EN LA COLECCION VECTOR
        for (NSString *element in vector) {
            NSLog(@"element: %@", element);
        }
        
    }
   
    return 0;
}
