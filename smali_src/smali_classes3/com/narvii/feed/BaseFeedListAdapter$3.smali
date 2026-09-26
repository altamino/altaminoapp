.class Lcom/narvii/feed/BaseFeedListAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/feed/FeedHelper$StartQuizInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/BaseFeedListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BaseFeedListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/BaseFeedListAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$3;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public startQuizAfterRequestFinish()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$3;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/feed/BaseFeedListAdapter;->isLoadingQuiz:Z

    .line 5
    return v0
.end method
