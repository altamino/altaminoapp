.class Lcom/narvii/widget/SearchBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/narvii/widget/SearchBar$4;->this$0:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/SearchBar$4;->this$0:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->d(Lcom/narvii/widget/SearchBar;)Landroid/widget/EditText;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/widget/SearchBar$4;->this$0:Lcom/narvii/widget/SearchBar;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->d(Lcom/narvii/widget/SearchBar;)Landroid/widget/EditText;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/widget/SearchBar$4;->this$0:Lcom/narvii/widget/SearchBar;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->a(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnClearClickListener;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/widget/SearchBar$4;->this$0:Lcom/narvii/widget/SearchBar;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->a(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnClearClickListener;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Lcom/narvii/widget/SearchBar$OnClearClickListener;->onClearClicked()V

    .line 37
    :cond_0
    return-void
.end method
