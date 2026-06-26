.class Lcom/narvii/widget/KeywordsView$1;
.super Ljava/lang/Object;
.source "KeywordsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/KeywordsView;->onLayout(ZIIII)V
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

    .line 119
    iput-object p1, p0, Lcom/narvii/widget/KeywordsView$1;->this$0:Lcom/narvii/widget/KeywordsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/narvii/widget/KeywordsView$1;->this$0:Lcom/narvii/widget/KeywordsView;

    iget-boolean v1, v0, Lcom/narvii/widget/KeywordsView;->pending:Z

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, v0, Lcom/narvii/widget/KeywordsView;->keywords:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/KeywordsView;->setKeywords(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/narvii/widget/KeywordsView$1;->this$0:Lcom/narvii/widget/KeywordsView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/widget/KeywordsView;->pending:Z

    :cond_0
    return-void
.end method
