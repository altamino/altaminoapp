.class Lcom/narvii/widget/SearchBar$3;
.super Ljava/lang/Object;
.source "SearchBar.java"

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

    .line 126
    iput-object p1, p0, Lcom/narvii/widget/SearchBar$3;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/widget/SearchBar$3;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {v0}, Lcom/narvii/widget/SearchBar;->access$100(Lcom/narvii/widget/SearchBar;)V

    .line 130
    iget-object v0, p0, Lcom/narvii/widget/SearchBar$3;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {v0}, Lcom/narvii/widget/SearchBar;->access$200(Lcom/narvii/widget/SearchBar;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/narvii/widget/SearchBar$3;->this$0:Lcom/narvii/widget/SearchBar;

    invoke-static {v0}, Lcom/narvii/widget/SearchBar;->access$200(Lcom/narvii/widget/SearchBar;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
