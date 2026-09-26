.class public final Lcom/narvii/prefs/AssetsStorageFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;,
        Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;,
        Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetsStorageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetsStorageFragment.kt\ncom/narvii/prefs/AssetsStorageFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n1855#2,2:282\n1855#2,2:284\n1855#2,2:286\n1855#2,2:288\n1855#2,2:290\n*S KotlinDebug\n*F\n+ 1 AssetsStorageFragment.kt\ncom/narvii/prefs/AssetsStorageFragment\n*L\n90#1:282,2\n98#1:284,2\n107#1:286,2\n196#1:288,2\n228#1:290,2\n*E\n"
.end annotation


# instance fields
.field private assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

.field private captionFont:Lcom/narvii/asset/AssetDownloader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private captionStyle:Lcom/narvii/asset/AssetDownloader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private deleteBtn:Landroidx/appcompat/widget/AppCompatButton;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectAllImg:Lcom/narvii/widget/NVImageView;

.field private stickerHelper:Lcom/narvii/scene/helper/StickerHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private unSelectAllImg:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static final synthetic access$calculateSize(Lcom/narvii/prefs/AssetsStorageFragment;J)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/prefs/AssetsStorageFragment;->calculateSize(J)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getAssetsAdapter$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCaptionFont$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/asset/AssetDownloader;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->captionFont:Lcom/narvii/asset/AssetDownloader;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCaptionStyle$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/asset/AssetDownloader;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->captionStyle:Lcom/narvii/asset/AssetDownloader;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getList$p(Lcom/narvii/prefs/AssetsStorageFragment;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getStickerHelper$p(Lcom/narvii/prefs/AssetsStorageFragment;)Lcom/narvii/scene/helper/StickerHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->stickerHelper:Lcom/narvii/scene/helper/StickerHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$updateList(Lcom/narvii/prefs/AssetsStorageFragment;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/prefs/AssetsStorageFragment;->updateList(I)V

    .line 4
    return-void
.end method

.method private final calculateSize(J)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x400

    .line 3
    int-to-long v0, v0

    .line 4
    div-long/2addr p1, v0

    .line 5
    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    .line 8
    cmp-long v2, p1, v2

    .line 9
    .line 10
    if-gez v2, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p1, "KB"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    div-long/2addr p1, v0

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p1, "MB"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method private final cleanAssets(J)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    new-array v2, v1, [Ljava/lang/Object;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/narvii/prefs/AssetsStorageFragment;->calculateSize(J)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    aput-object p1, v2, v3

    .line 20
    .line 21
    .line 22
    const p1, 0x7f1210a0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    const p1, 0x7f1203a0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 36
    .line 37
    new-instance p1, Lcom/narvii/prefs/c;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/narvii/prefs/c;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 47
    return-void
.end method

.method private static final cleanAssets$lambda$5(Lcom/narvii/prefs/AssetsStorageFragment;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "list"

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 16
    move-object p1, p2

    .line 17
    .line 18
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getClearCache()Le8/a;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-interface {v2}, Le8/a;->invoke()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->setSelected(Z)V

    .line 52
    .line 53
    const-wide/16 v1, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->setSize(J)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    const v0, 0x7f121182

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    .line 74
    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    const-string p1, "assetsAdapter"

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move-object p2, p1

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {p2}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->updateSelectAllView(Z)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->updateDeleteBtn(Z)V

    .line 92
    return-void
.end method

.method public static synthetic t(Lcom/narvii/prefs/AssetsStorageFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/prefs/AssetsStorageFragment;->cleanAssets$lambda$5(Lcom/narvii/prefs/AssetsStorageFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final updateDeleteBtn(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-string v1, "deleteBtn"

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->deleteBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, p1

    .line 15
    .line 16
    .line 17
    :goto_0
    const p1, 0x7f080118

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 21
    goto :goto_2

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->deleteBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move-object v0, p1

    .line 31
    .line 32
    .line 33
    :goto_1
    const p1, 0x7f080119

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 37
    :goto_2
    return-void
.end method

.method private final updateList(I)V
    .locals 5

    .line 1
    .line 2
    if-ltz p1, :cond_9

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 5
    .line 6
    const-string v1, "list"

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    move-object v0, v2

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-ge p1, v0, :cond_9

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 27
    move-object v0, v2

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 36
    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 41
    move-object v3, v2

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    .line 51
    move-result p1

    .line 52
    const/4 v3, 0x1

    .line 53
    xor-int/2addr p1, v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->setSelected(Z)V

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    const-string p1, "assetsAdapter"

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 66
    move-object p1, v2

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 72
    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    move-object v2, p1

    .line 79
    .line 80
    :goto_0
    check-cast v2, Ljava/lang/Iterable;

    .line 81
    .line 82
    .line 83
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object p1

    .line 85
    const/4 v0, 0x0

    .line 86
    move v2, v0

    .line 87
    move v1, v3

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v4

    .line 92
    .line 93
    if-eqz v4, :cond_8

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v4

    .line 98
    .line 99
    check-cast v4, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    .line 105
    move-result v1

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    move v1, v3

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    move v1, v0

    .line 111
    .line 112
    :goto_2
    if-nez v2, :cond_7

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    .line 116
    move-result v2

    .line 117
    .line 118
    if-eqz v2, :cond_6

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    move v2, v0

    .line 121
    goto :goto_1

    .line 122
    :cond_7
    :goto_3
    move v2, v3

    .line 123
    goto :goto_1

    .line 124
    .line 125
    .line 126
    :cond_8
    invoke-direct {p0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->updateSelectAllView(Z)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, v2}, Lcom/narvii/prefs/AssetsStorageFragment;->updateDeleteBtn(Z)V

    .line 130
    :cond_9
    return-void
.end method

.method private final updateSelectAllView(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    const-string v1, "unSelectAllImg"

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    const-string v3, "selectAllImg"

    .line 7
    const/4 v4, 0x0

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->selectAllImg:Lcom/narvii/widget/NVImageView;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    move-object p1, v4

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->unSelectAllImg:Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v4, p1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    goto :goto_2

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->selectAllImg:Lcom/narvii/widget/NVImageView;

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 41
    move-object p1, v4

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->unSelectAllImg:Lcom/narvii/widget/NVImageView;

    .line 47
    .line 48
    if-nez p1, :cond_4

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    move-object v4, p1

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :goto_2
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 14
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 p1, 0x4

    .line 2
    .line 3
    new-array p1, p1, [Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 4
    .line 5
    new-instance v6, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    const v1, 0x7f1210a5

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    const-string v7, "getString(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    new-instance v5, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v5, p0}, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$1;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    .line 30
    move-object v0, v6

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLe8/a;)V

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    aput-object v6, p1, v0

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    const v2, 0x7f1210a4

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v9

    .line 50
    .line 51
    .line 52
    invoke-static {v9, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    const-wide/16 v10, 0x0

    .line 55
    const/4 v12, 0x0

    .line 56
    .line 57
    new-instance v13, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$2;

    .line 58
    .line 59
    .line 60
    invoke-direct {v13, p0}, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$2;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    .line 61
    move-object v8, v0

    .line 62
    .line 63
    .line 64
    invoke-direct/range {v8 .. v13}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLe8/a;)V

    .line 65
    const/4 v1, 0x1

    .line 66
    .line 67
    aput-object v0, p1, v1

    .line 68
    .line 69
    new-instance v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    const v2, 0x7f1210a8

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v9

    .line 81
    .line 82
    .line 83
    invoke-static {v9, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    new-instance v13, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$3;

    .line 86
    .line 87
    .line 88
    invoke-direct {v13, p0}, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$3;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    .line 89
    move-object v8, v0

    .line 90
    .line 91
    .line 92
    invoke-direct/range {v8 .. v13}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLe8/a;)V

    .line 93
    const/4 v1, 0x2

    .line 94
    .line 95
    aput-object v0, p1, v1

    .line 96
    .line 97
    new-instance v0, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    const v2, 0x7f1210a6

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 108
    move-result-object v9

    .line 109
    .line 110
    .line 111
    invoke-static {v9, v7}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    new-instance v13, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$4;

    .line 114
    .line 115
    .line 116
    invoke-direct {v13, p0}, Lcom/narvii/prefs/AssetsStorageFragment$createAdapter$4;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    .line 117
    move-object v8, v0

    .line 118
    .line 119
    .line 120
    invoke-direct/range {v8 .. v13}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;-><init>(Ljava/lang/String;JZLe8/a;)V

    .line 121
    const/4 v1, 0x3

    .line 122
    .line 123
    aput-object v0, p1, v1

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 130
    .line 131
    new-instance p1, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 134
    .line 135
    if-nez v0, :cond_0

    .line 136
    .line 137
    const-string v0, "list"

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    .line 142
    .line 143
    .line 144
    :cond_0
    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;Lcom/narvii/app/NVContext;Ljava/util/List;)V

    .line 145
    .line 146
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    .line 147
    return-object p1
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    .line 15
    :goto_0
    const-string v1, "assetsAdapter"

    .line 16
    .line 17
    const-string v2, "list"

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    goto :goto_3

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v3

    .line 25
    .line 26
    .line 27
    const v4, 0x7f0a0cc8

    .line 28
    .line 29
    if-ne v3, v4, :cond_5

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 37
    move-object p1, v0

    .line 38
    .line 39
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x0

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    check-cast v2, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->setSelected(Z)V

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-direct {p0, v3}, Lcom/narvii/prefs/AssetsStorageFragment;->updateSelectAllView(Z)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    .line 66
    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move-object v0, p1

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {v0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v3}, Lcom/narvii/prefs/AssetsStorageFragment;->updateDeleteBtn(Z)V

    .line 79
    .line 80
    goto/16 :goto_9

    .line 81
    .line 82
    :cond_5
    :goto_3
    if-nez p1, :cond_6

    .line 83
    goto :goto_6

    .line 84
    .line 85
    .line 86
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result v3

    .line 88
    .line 89
    .line 90
    const v4, 0x7f0a0f2b

    .line 91
    .line 92
    if-ne v3, v4, :cond_a

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 95
    .line 96
    if-nez p1, :cond_7

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 100
    move-object p1, v0

    .line 101
    .line 102
    :cond_7
    check-cast p1, Ljava/lang/Iterable;

    .line 103
    .line 104
    .line 105
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v2

    .line 111
    const/4 v3, 0x1

    .line 112
    .line 113
    if-eqz v2, :cond_8

    .line 114
    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    check-cast v2, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v3}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->setSelected(Z)V

    .line 123
    goto :goto_4

    .line 124
    .line 125
    .line 126
    :cond_8
    invoke-direct {p0, v3}, Lcom/narvii/prefs/AssetsStorageFragment;->updateSelectAllView(Z)V

    .line 127
    .line 128
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->assetsAdapter:Lcom/narvii/prefs/AssetsStorageFragment$AssetsAdapter;

    .line 129
    .line 130
    if-nez p1, :cond_9

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 134
    goto :goto_5

    .line 135
    :cond_9
    move-object v0, p1

    .line 136
    .line 137
    .line 138
    :goto_5
    invoke-virtual {v0}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v3}, Lcom/narvii/prefs/AssetsStorageFragment;->updateDeleteBtn(Z)V

    .line 142
    goto :goto_9

    .line 143
    .line 144
    :cond_a
    :goto_6
    if-nez p1, :cond_b

    .line 145
    goto :goto_9

    .line 146
    .line 147
    .line 148
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 149
    move-result p1

    .line 150
    .line 151
    .line 152
    const v1, 0x7f0a0419

    .line 153
    .line 154
    if-ne p1, v1, :cond_f

    .line 155
    .line 156
    iget-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->list:Ljava/util/List;

    .line 157
    .line 158
    if-nez p1, :cond_c

    .line 159
    .line 160
    .line 161
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 162
    goto :goto_7

    .line 163
    :cond_c
    move-object v0, p1

    .line 164
    .line 165
    :goto_7
    check-cast v0, Ljava/lang/Iterable;

    .line 166
    .line 167
    .line 168
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    const-wide/16 v0, 0x0

    .line 172
    .line 173
    .line 174
    :cond_d
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    move-result v2

    .line 176
    .line 177
    if-eqz v2, :cond_e

    .line 178
    .line 179
    .line 180
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    check-cast v2, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSelected()Z

    .line 187
    move-result v3

    .line 188
    .line 189
    if-eqz v3, :cond_d

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Lcom/narvii/prefs/AssetsStorageFragment$AssetsModel;->getSize()J

    .line 193
    move-result-wide v2

    .line 194
    add-long/2addr v0, v2

    .line 195
    goto :goto_8

    .line 196
    .line 197
    .line 198
    :cond_e
    invoke-direct {p0, v0, v1}, Lcom/narvii/prefs/AssetsStorageFragment;->cleanAssets(J)V

    .line 199
    :cond_f
    :goto_9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "captionFont"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/asset/AssetDownloader;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->captionFont:Lcom/narvii/asset/AssetDownloader;

    .line 14
    .line 15
    const-string p1, "captionStyle"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/asset/AssetDownloader;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->captionStyle:Lcom/narvii/asset/AssetDownloader;

    .line 24
    .line 25
    new-instance p1, Lcom/narvii/scene/helper/StickerHelper;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/narvii/scene/helper/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->stickerHelper:Lcom/narvii/scene/helper/StickerHelper;

    .line 31
    .line 32
    .line 33
    const p1, 0x7f1210a3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x7f0d02a7

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/widget/ListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 18
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0a0cc8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string v0, "findViewById(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/prefs/AssetsStorageFragment;->selectAllImg:Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    .line 27
    const p2, 0x7f0a0f2b

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/narvii/prefs/AssetsStorageFragment;->unSelectAllImg:Lcom/narvii/widget/NVImageView;

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/prefs/AssetsStorageFragment;->selectAllImg:Lcom/narvii/widget/NVImageView;

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    if-nez p2, :cond_0

    .line 44
    .line 45
    const-string p2, "selectAllImg"

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 49
    move-object p2, v1

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/prefs/AssetsStorageFragment;->unSelectAllImg:Lcom/narvii/widget/NVImageView;

    .line 55
    .line 56
    if-nez p2, :cond_1

    .line 57
    .line 58
    const-string p2, "unSelectAllImg"

    .line 59
    .line 60
    .line 61
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 62
    move-object p2, v1

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    const p2, 0x7f0a0419

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/narvii/prefs/AssetsStorageFragment;->deleteBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    const-string p1, "deleteBtn"

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    move-object v1, p1

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    new-instance p1, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, p0}, Lcom/narvii/prefs/AssetsStorageFragment$StorageAsyncTask;-><init>(Lcom/narvii/prefs/AssetsStorageFragment;)V

    .line 97
    const/4 p2, 0x0

    .line 98
    .line 99
    new-array p2, p2, [Ljava/lang/Void;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method
