.class Lcom/narvii/widget/SearchBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/narvii/widget/SearchBar$3;->this$0:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SearchBar$3;->this$0:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/SearchBar;->e(Lcom/narvii/widget/SearchBar;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/SearchBar$3;->this$0:Lcom/narvii/widget/SearchBar;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/widget/SearchBar;->b(Lcom/narvii/widget/SearchBar;)Landroid/view/View$OnFocusChangeListener;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/widget/SearchBar$3;->this$0:Lcom/narvii/widget/SearchBar;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/widget/SearchBar;->b(Lcom/narvii/widget/SearchBar;)Landroid/view/View$OnFocusChangeListener;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 23
    :cond_0
    return-void
.end method
