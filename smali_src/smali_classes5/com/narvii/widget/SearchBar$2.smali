.class Lcom/narvii/widget/SearchBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/SearchBar;


# direct methods
.method constructor <init>(Lcom/narvii/widget/SearchBar;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/SearchBar$2;->this$0:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SearchBar$2;->this$0:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/SearchBar;->c(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/SearchBar$2;->this$0:Lcom/narvii/widget/SearchBar;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/SearchBar;->c(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/widget/SearchBar$2;->this$0:Lcom/narvii/widget/SearchBar;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1, p1}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/SearchBar$2;->this$0:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->e(Lcom/narvii/widget/SearchBar;)V

    .line 6
    return-void
.end method
