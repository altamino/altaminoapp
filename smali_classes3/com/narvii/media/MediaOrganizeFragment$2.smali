.class Lcom/narvii/media/MediaOrganizeFragment$2;
.super Ljava/lang/Object;
.source "MediaOrganizeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaOrganizeFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaOrganizeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaOrganizeFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 151
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    const-string v0, "maximum"

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    iget-object v1, v1, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    sget v3, Lcom/narvii/lib/R$string;->media_exceed_limit:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    invoke-virtual {v1}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    iget-object v1, p1, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    iget-object v3, p1, Lcom/narvii/media/MediaOrganizeFragment;->dir:Ljava/io/File;

    iget p1, p1, Lcom/narvii/media/MediaOrganizeFragment;->flags:I

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    iget-object v3, v1, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    iget-object v4, v1, Lcom/narvii/media/MediaOrganizeFragment;->dir:Ljava/io/File;

    iget v5, v1, Lcom/narvii/media/MediaOrganizeFragment;->flags:I

    or-int/2addr v0, v5

    iget-object v1, v1, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v3, v4, v2, v0, p1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    :goto_0
    return-void
.end method
