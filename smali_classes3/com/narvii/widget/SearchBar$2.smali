.class Lcom/narvii/widget/SearchBar$2;
.super Ljava/lang/Object;
.source "SearchBar.java"

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

    .line 107
    iput-object p1, p0, Lcom/narvii/widget/SearchBar$2;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/narvii/widget/SearchBar$2;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {v0}, Lcom/narvii/widget/SearchBar;->access$000(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnSearchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/narvii/widget/SearchBar$2;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {v0}, Lcom/narvii/widget/SearchBar;->access$000(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnSearchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/widget/SearchBar$2;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/narvii/widget/SearchBar$2;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->access$100(Lcom/narvii/widget/SearchBar;)V

    return-void
.end method
