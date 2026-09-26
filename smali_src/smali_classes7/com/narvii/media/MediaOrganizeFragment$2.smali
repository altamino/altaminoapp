.class Lcom/narvii/media/MediaOrganizeFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 3
    .line 4
    const-string v0, "maximum"

    .line 5
    .line 6
    const/16 v1, 0x32

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    move-result v1

    .line 26
    .line 27
    if-lt v1, p1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 36
    .line 37
    sget v3, Lcom/narvii/lib/R$string;->media_exceed_limit:I

    .line 38
    const/4 v4, 0x1

    .line 39
    .line 40
    new-array v4, v4, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    aput-object p1, v4, v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-static {v1, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    iget-object v1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/narvii/media/MediaOrganizeFragment;->isPick()Z

    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x0

    .line 66
    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 70
    .line 71
    iget-object v1, p1, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 72
    .line 73
    iget-object v3, p1, Lcom/narvii/media/MediaOrganizeFragment;->dir:Ljava/io/File;

    .line 74
    .line 75
    iget p1, p1, Lcom/narvii/media/MediaOrganizeFragment;->flags:I

    .line 76
    .line 77
    or-int/lit8 p1, p1, 0x4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/MediaOrganizeFragment$2;->this$0:Lcom/narvii/media/MediaOrganizeFragment;

    .line 84
    .line 85
    iget-object v1, v0, Lcom/narvii/media/MediaOrganizeFragment;->picker:Lcom/narvii/media/MediaPickerFragment;

    .line 86
    .line 87
    iget-object v3, v0, Lcom/narvii/media/MediaOrganizeFragment;->dir:Ljava/io/File;

    .line 88
    .line 89
    iget v4, v0, Lcom/narvii/media/MediaOrganizeFragment;->flags:I

    .line 90
    .line 91
    iget-object v0, v0, Lcom/narvii/media/MediaOrganizeFragment;->adapter:Lcom/narvii/media/MediaOrganizeFragment$Adapter;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 99
    move-result v0

    .line 100
    sub-int/2addr p1, v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 104
    :goto_0
    return-void
.end method
