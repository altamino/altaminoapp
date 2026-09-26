.class Lcom/narvii/catalog/CatalogFragment$SearchAdapter;
.super Lcom/narvii/catalog/search/CatalogSearchBarAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0c95

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    const-class p1, Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 22
    .line 23
    const-string/jumbo p3, "uid"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    const-string p3, "previewMedia"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

    .line 47
    move-result p2

    .line 48
    .line 49
    const-string p3, "fromMyCatalog"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    .line 58
    move-result p2

    .line 59
    .line 60
    const-string p3, "fromOfficialCatalog"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    .line 65
    const-string p2, "customFinishAnimIn"

    .line 66
    .line 67
    .line 68
    const p3, 0x7f010037

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    .line 73
    const-string p2, "customFinishAnimOut"

    .line 74
    .line 75
    .line 76
    const p4, 0x7f010038

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    .line 81
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 82
    .line 83
    const-string p5, "isAllEntry"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p5}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 87
    move-result p2

    .line 88
    const/4 v0, 0x1

    .line 89
    .line 90
    if-nez p2, :cond_1

    .line 91
    .line 92
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 96
    move-result p2

    .line 97
    .line 98
    if-eqz p2, :cond_0

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const/4 p2, 0x0

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    move p2, v0

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    invoke-static {p0, p1}, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$SearchAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p3, p4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 118
    return v0

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 122
    move-result p1

    .line 123
    return p1
.end method
