.class Lcom/narvii/blog/post/TopicPostActivity$1;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/TopicPostActivity$1;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/blog/post/TopicPostActivity$1;->val$post:Lcom/narvii/blog/post/BlogPost;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
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

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
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

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d06dc

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    iget-object p3, p0, Lcom/narvii/blog/post/TopicPostActivity$1;->this$0:Lcom/narvii/blog/post/TopicPostActivity;

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    new-array v1, v0, [Ljava/lang/Object;

    .line 13
    add-int/2addr p1, v0

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    aput-object v2, v1, v3

    .line 21
    .line 22
    .line 23
    const v2, 0x7f120387

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    .line 30
    const v1, 0x7f0a0e51

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    iget-object p3, p0, Lcom/narvii/blog/post/TopicPostActivity$1;->val$post:Lcom/narvii/blog/post/BlogPost;

    .line 42
    .line 43
    iget p3, p3, Lcom/narvii/blog/post/BlogPost;->durationInDays:I

    .line 44
    .line 45
    if-ne p3, p1, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v0, v3

    .line 48
    .line 49
    .line 50
    :goto_0
    const p1, 0x7f0a0de5

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    const/16 v3, 0x8

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    return-object p2
.end method
