.class public Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;
.super Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;,
        Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;
    }
.end annotation


# static fields
.field private static final MIN_PICKS:I = 0x4


# instance fields
.field private agree:Landroid/widget/CheckBox;

.field private agreeLayout:Landroid/view/ViewGroup;

.field private agreeText:Landroid/widget/TextView;

.field private btNext:Landroid/widget/Button;

.field private createTimes:I

.field private expendedInterests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field private searchedTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTopics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field

.field private subInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

.field private uploadTopicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->expendedInterests:Ljava/util/Set;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->createTimes:I

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->uploadTopicList:Ljava/util/List;

    .line 35
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->subInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->uploadTopicList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic E(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->updateButton()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agree:Landroid/widget/CheckBox;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 12
    return-void
.end method

.method private updateButton()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->btNext:Landroid/widget/Button;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x4

    .line 12
    .line 13
    if-lt v1, v4, :cond_0

    .line 14
    move v1, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v2

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-lt v1, v4, :cond_1

    .line 30
    move v1, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v1, v2

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agree:Landroid/widget/CheckBox;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 43
    move-result v1

    .line 44
    .line 45
    if-lt v1, v4, :cond_2

    .line 46
    move v1, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v1, v2

    .line 49
    .line 50
    .line 51
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeText:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 59
    move-result v1

    .line 60
    .line 61
    if-lt v1, v4, :cond_3

    .line 62
    move v2, v3

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 71
    move-result v0

    .line 72
    .line 73
    if-lt v0, v4, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    .line 76
    .line 77
    const/high16 v1, 0x3f800000    # 1.0f

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 81
    goto :goto_3

    .line 82
    .line 83
    :cond_4
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    .line 84
    .line 85
    const/high16 v1, 0x3f000000    # 0.5f

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 89
    :goto_3
    return-void
.end method

.method public static synthetic w(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->createTimes:I

    return p0
.end method

.method static bridge synthetic y(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->expendedInterests:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)Lcom/narvii/list/MergeAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$1;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0d03aa

    .line 16
    .line 17
    .line 18
    filled-new-array {v0}, [I

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/list/StaticViewAdapter;->addLayouts([I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    .line 29
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$2;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p0, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$2;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/app/NVContext;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$SearchedTopicsAdapter;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/app/NVContext;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    .line 49
    new-instance p1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p0, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/app/NVContext;)V

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->subInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 57
    const/4 v1, 0x1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 63
    .line 64
    new-instance v0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$3;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->subInterestAdapter:Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$InterestPickerSubInterestAdapter;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0, v1}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$3;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;Lcom/narvii/list/NVAdapter;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 75
    return-object p1
.end method

.method protected doSubmit()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$4;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$4;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    .line 19
    .line 20
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$5;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment$5;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    .line 26
    .line 27
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->failureListener:Lcom/narvii/util/Callback;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agree:Landroid/widget/CheckBox;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    new-instance v2, Ljava/util/HashSet;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 46
    .line 47
    iget-object v3, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    check-cast v4, Lcom/narvii/model/story/StoryTopic;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/narvii/model/story/StoryTopic;->id()Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    new-instance v4, Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    iget-object v5, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    .line 92
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v5

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v6

    .line 98
    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v6

    .line 104
    .line 105
    check-cast v6, Lcom/narvii/model/story/StoryTopic;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/narvii/model/story/StoryTopic;->id()Ljava/lang/String;

    .line 109
    move-result-object v7

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 113
    move-result v7

    .line 114
    .line 115
    if-eqz v7, :cond_1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    .line 119
    move-result-object v6

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    goto :goto_1

    .line 124
    .line 125
    .line 126
    :cond_1
    invoke-virtual {v6}, Lcom/narvii/model/story/StoryTopic;->getDisplayName()Ljava/lang/String;

    .line 127
    move-result-object v6

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    goto :goto_1

    .line 132
    .line 133
    :cond_2
    sget-object v2, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 134
    .line 135
    .line 136
    invoke-static {p0, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    const-string v5, "Next"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v5}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 143
    move-result-object v2

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 147
    move-result v5

    .line 148
    .line 149
    .line 150
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v5

    .line 152
    .line 153
    .line 154
    const-string/jumbo v6, "topicCount"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v6, v5}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    .line 161
    const-string/jumbo v5, "topicNameList"

    .line 162
    .line 163
    const-string v6, ","

    .line 164
    .line 165
    .line 166
    invoke-static {v6, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 167
    move-result-object v3

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v5, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 175
    move-result v3

    .line 176
    .line 177
    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object v3

    .line 180
    .line 181
    const-string v5, "searchTopicCount"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v5, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 185
    move-result-object v2

    .line 186
    .line 187
    const-string v3, "searchTopicNameList"

    .line 188
    .line 189
    .line 190
    invoke-static {v6, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 191
    move-result-object v4

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v3, v4}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 195
    move-result-object v2

    .line 196
    .line 197
    const-string v3, "notificationEnabled"

    .line 198
    .line 199
    .line 200
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 201
    move-result-object v4

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3, v4}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 205
    move-result-object v2

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 209
    .line 210
    .line 211
    :cond_3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 216
    move-result-object v2

    .line 217
    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    const-string v4, "/persona/picked-topics?language="

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getLanguageCode()Ljava/lang/String;

    .line 230
    move-result-object v4

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object v3

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 241
    move-result-object v2

    .line 242
    .line 243
    const-string v3, "pickedTopicIds"

    .line 244
    .line 245
    iget-object v4, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->uploadTopicList:Ljava/util/List;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 249
    move-result-object v2

    .line 250
    .line 251
    .line 252
    const-string/jumbo v3, "subscribe"

    .line 253
    .line 254
    .line 255
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 256
    move-result-object v1

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 260
    move-result-object v1

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 264
    move-result-object v1

    .line 265
    .line 266
    const-string v2, "api"

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    move-result-object v2

    .line 271
    .line 272
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 273
    .line 274
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 278
    return-void
.end method

.method public getListDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string/jumbo v0, "sub_interests"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_5

    .line 4
    .line 5
    const/16 v0, 0x65

    .line 6
    .line 7
    if-ne p1, v0, :cond_5

    .line 8
    .line 9
    const-string p1, "selected_topic"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-class p2, Lcom/narvii/model/story/StoryTopic;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    .line 22
    .line 23
    const-string p2, "canceled_topic"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    const-class p3, Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result p3

    .line 44
    .line 45
    if-eqz p3, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    check-cast p3, Ljava/lang/Integer;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->uploadTopicList:Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_0
    if-eqz p1, :cond_4

    .line 65
    .line 66
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    .line 67
    .line 68
    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 69
    .line 70
    .line 71
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->uploadTopicList:Ljava/util/List;

    .line 78
    .line 79
    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 80
    .line 81
    .line 82
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object p3

    .line 84
    .line 85
    .line 86
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    .line 89
    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result p3

    .line 97
    .line 98
    if-eqz p3, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object p3

    .line 103
    .line 104
    check-cast p3, Lcom/narvii/model/story/StoryTopic;

    .line 105
    .line 106
    iget v0, p3, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 107
    .line 108
    iget v1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 109
    .line 110
    if-ne v0, v1, :cond_1

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const/4 p3, 0x0

    .line 113
    .line 114
    :goto_1
    if-eqz p3, :cond_3

    .line 115
    .line 116
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    .line 121
    :cond_3
    iget-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->searchedTopics:Ljava/util/List;

    .line 122
    .line 123
    .line 124
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    :cond_4
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->updateButton()V

    .line 133
    return-void

    .line 134
    .line 135
    .line 136
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->selectedTopics:Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->expendedInterests:Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 14
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d03a3

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->createTimes:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->createTimes:I

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    const p2, 0x7f0a09f3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Landroid/widget/Button;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->btNext:Landroid/widget/Button;

    .line 21
    .line 22
    .line 23
    const p2, 0x7f0a0e9e

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, Landroid/widget/TextView;

    .line 30
    .line 31
    .line 32
    const v0, 0x7f121298

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 36
    .line 37
    .line 38
    const p2, 0x7f0a00bf

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    check-cast p2, Landroid/view/ViewGroup;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    .line 47
    .line 48
    .line 49
    const p2, 0x7f0a00bc

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    check-cast p2, Landroid/widget/CheckBox;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agree:Landroid/widget/CheckBox;

    .line 58
    .line 59
    .line 60
    const p2, 0x7f0a00c1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeText:Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agree:Landroid/widget/CheckBox;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    .line 76
    const/4 p2, 0x0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->agreeLayout:Landroid/view/ViewGroup;

    .line 82
    .line 83
    new-instance p2, Lcom/narvii/suggest/interest/i;

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, p0}, Lcom/narvii/suggest/interest/i;-><init>(Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/narvii/suggest/interest/InterestPickerSubInterestFragment;->updateButton()V

    .line 93
    return-void
.end method
