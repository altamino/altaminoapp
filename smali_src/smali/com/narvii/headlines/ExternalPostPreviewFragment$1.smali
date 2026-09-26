.class Lcom/narvii/headlines/ExternalPostPreviewFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/headlines/ExternalPostPreviewFragment;->moreOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/headlines/ExternalPostPreviewFragment;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->val$ops:[I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->val$ops:[I

    .line 3
    .line 4
    aget p1, p1, p2

    .line 5
    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->C(Lcom/narvii/headlines/ExternalPostPreviewFragment;Ljava/lang/String;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->B(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->A(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :sswitch_3
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->v(Lcom/narvii/headlines/ExternalPostPreviewFragment;)Lcom/narvii/model/Blog;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->flagForReview(Lcom/narvii/model/Feed;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/headlines/ExternalPostPreviewFragment$1;->this$0:Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/headlines/ExternalPostPreviewFragment;->z(Lcom/narvii/headlines/ExternalPostPreviewFragment;)V

    .line 50
    :goto_0
    return-void

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    :sswitch_data_0
    .sparse-switch
        0x7f1201bb -> :sswitch_4
        0x7f120781 -> :sswitch_3
        0x7f120d82 -> :sswitch_2
        0x7f120e24 -> :sswitch_1
        0x7f1210ad -> :sswitch_0
    .end sparse-switch
.end method
