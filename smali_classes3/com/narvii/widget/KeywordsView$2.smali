.class Lcom/narvii/widget/KeywordsView$2;
.super Ljava/lang/Object;
.source "KeywordsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/KeywordsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/KeywordsView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/KeywordsView;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/narvii/widget/KeywordsView$2;->this$0:Lcom/narvii/widget/KeywordsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/narvii/widget/KeywordsView$2;->this$0:Lcom/narvii/widget/KeywordsView;

    iget-object v0, v0, Lcom/narvii/widget/KeywordsView;->keywordClickListener:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 217
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
