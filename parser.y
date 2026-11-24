%{
    #include<stdio.h>
    int yylex();
    void yyerror(const char *s);
%}

%token P Q 


%%
S : A P;
A : P Q;
%%

void yyerror(const char *s){}
int main(){
    if(yyparse()==0){
        printf("valid expression");
    }
    else{
        printf("not a valid expression");

    }
    return 0;
}