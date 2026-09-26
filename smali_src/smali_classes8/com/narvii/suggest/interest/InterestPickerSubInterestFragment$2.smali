.class Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$2;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;


# direct methods
.method constructor <init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$2;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Search"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/AdriftAdapter;->getCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d03ad

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0ca2

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 17
    .line 18
    const-class p1, Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    new-instance p2, Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object p3, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$2;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->B(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo p3, "topic_id_list"

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$2;->this$0:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;

    .line 50
    .line 51
    const/16 p3, 0x65

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p1, p3}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$2;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 60
    move-result p1

    .line 61
    return p1
.end method
