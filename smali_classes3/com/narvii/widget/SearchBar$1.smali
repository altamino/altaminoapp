.class Lcom/narvii/widget/SearchBar$1;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 92
    iput-object p1, p0, Lcom/narvii/widget/SearchBar$1;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    .line 96
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 97
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0x42

    if-ne p2, p3, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/widget/SearchBar$1;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->access$000(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnSearchListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/narvii/widget/SearchBar$1;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->access$000(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnSearchListener;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/widget/SearchBar$1;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p2}, Lcom/narvii/widget/SearchBar;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
