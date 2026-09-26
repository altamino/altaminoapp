.class Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->setResponse(Lcom/narvii/model/api/CategoryListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    const-class v0, Lcom/narvii/catalog/picker/AllItemPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "pickOnFinish"

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "uid"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "itemList"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 43
    .line 44
    iget v1, v1, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    .line 45
    .line 46
    const-string v2, "maximum"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 54
    .line 55
    iget v1, v1, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    .line 56
    .line 57
    const-string v2, "mode"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    const-string v2, "previewMedia"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    const-string v1, "customFinishAnimIn"

    .line 80
    const/4 v2, 0x0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    .line 85
    const-string v1, "customFinishAnimOut"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 93
    .line 94
    iget-boolean v1, v1, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    .line 95
    .line 96
    const-string v3, "canSelectOfficial"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    if-nez v1, :cond_0

    .line 110
    return-void

    .line 111
    .line 112
    :cond_0
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 115
    .line 116
    const/16 v3, 0xa

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v0, v3}, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;->this$1:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 131
    return-void
.end method
