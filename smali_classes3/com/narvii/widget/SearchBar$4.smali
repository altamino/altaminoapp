.class Lcom/narvii/widget/SearchBar$4;
.super Ljava/lang/Object;
.source "SearchBar.java"

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

    .line 152
    iput-object p1, p0, Lcom/narvii/widget/SearchBar$4;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/narvii/widget/SearchBar$4;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->access$300(Lcom/narvii/widget/SearchBar;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/narvii/widget/SearchBar$4;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->access$300(Lcom/narvii/widget/SearchBar;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 157
    iget-object p1, p0, Lcom/narvii/widget/SearchBar$4;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->access$400(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnClearClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/narvii/widget/SearchBar$4;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {p1}, Lcom/narvii/widget/SearchBar;->access$400(Lcom/narvii/widget/SearchBar;)Lcom/narvii/widget/SearchBar$OnClearClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/widget/SearchBar$OnClearClickListener;->onClearClicked()V

    :cond_0
    return-void
.end method
