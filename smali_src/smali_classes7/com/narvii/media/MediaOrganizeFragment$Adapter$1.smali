.class Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaOrganizeFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

.field final synthetic val$allowCover:Z

.field final synthetic val$media:Lcom/narvii/model/Media;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaOrganizeFragment$Adapter;ZLcom/narvii/model/Media;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$allowCover:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$media:Lcom/narvii/model/Media;

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$position:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$allowCover:Z

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    const/4 p1, 0x1

    .line 8
    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 13
    .line 14
    iget p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$position:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$media:Lcom/narvii/model/Media;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2, v0}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->f(Lcom/narvii/media/MediaOrganizeFragment$Adapter;ILcom/narvii/model/Media;)V

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$media:Lcom/narvii/model/Media;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/narvii/media/MediaOrganizeFragment;->v(Lcom/narvii/media/MediaOrganizeFragment;Lcom/narvii/model/Media;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 37
    const/4 p2, 0x0

    .line 38
    .line 39
    iput-object p2, p1, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_2
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$media:Lcom/narvii/model/Media;

    .line 47
    .line 48
    iput-object p2, p1, Lcom/narvii/media/MediaOrganizeFragment;->coverMedia:Lcom/narvii/model/Media;

    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_3
    if-eqz p2, :cond_4

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_4
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->this$1:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 60
    .line 61
    iget p2, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$position:I

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$Adapter$1;->val$media:Lcom/narvii/model/Media;

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2, v0}, Lcom/narvii/media/MediaOrganizeFragment$Adapter;->f(Lcom/narvii/media/MediaOrganizeFragment$Adapter;ILcom/narvii/model/Media;)V

    .line 67
    :goto_1
    return-void
.end method
