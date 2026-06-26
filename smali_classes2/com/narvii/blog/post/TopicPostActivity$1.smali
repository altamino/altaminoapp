.class Lcom/narvii/blog/post/TopicPostActivity$1;
.super Lcom/narvii/list/NVAdapter;
.source "TopicPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/TopicPostActivity;->editPollDuration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/TopicPostActivity;

.field final synthetic val$post:Lcom/narvii/blog/post/BlogPost;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/TopicPostActivity;Lcom/narvii/app/NVContext;Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$1;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    iput-object p3, p0, Lcom/narvii/blog/post/TopicPostActivity$1;->val$post:Lcom/narvii/blog/post/BlogPost;

    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 0

    .line 288
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/narvii/blog/post/TopicPostActivity$1;->getItem(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const v0, 0x7f0b062d

    .line 273
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 274
    iget-object p3, p0, Lcom/narvii/blog/post/TopicPostActivity$1;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f0332

    invoke-virtual {p3, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const v1, 0x7f090b5b

    .line 275
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p3, p0, Lcom/narvii/blog/post/TopicPostActivity$1;->val$post:Lcom/narvii/blog/post/BlogPost;

    iget p3, p3, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const p1, 0x7f090b03

    .line 277
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method
