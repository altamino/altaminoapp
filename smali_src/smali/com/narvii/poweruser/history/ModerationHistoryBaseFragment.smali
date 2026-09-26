.class public Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;
    }
.end annotation


# static fields
.field public static final PARAMS_DATE:Ljava/lang/String; = "dateSection"

.field public static final PARAMS_OBJECT_ID:Ljava/lang/String; = "objectId"

.field public static final PARAMS_OBJECT_TYPE:Ljava/lang/String; = "objectType"

.field public static final PARAMS_OPERATOR_UID:Ljava/lang/String; = "operatorId"

.field public static final PARAMS_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private curSectionText:Ljava/lang/String;

.field dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

.field dateSections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected moderationHistoryAdapter:Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;

.field private objectId:Ljava/lang/String;

.field private objectType:I

.field protected operatorId:Ljava/lang/String;

.field private sectionHeaderOverlay:Landroid/view/View;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string v1, "MMMM d"

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 30
    .line 31
    new-instance v0, Landroid/util/SparseArray;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateSections:Landroid/util/SparseArray;

    .line 37
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectType:I

    return p0
.end method

.method private updateSectionOverLay(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 1
    const/4 p3, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object p3

    .line 6
    const/4 p4, 0x1

    .line 7
    .line 8
    if-eqz p3, :cond_2

    .line 9
    .line 10
    sget v0, Lcom/narvii/lib/R$id;->list_time_section_name:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    check-cast p3, Ljava/lang/String;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateSections:Landroid/util/SparseArray;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    .line 28
    .line 29
    check-cast p2, Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object p3, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    iget-object p3, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateSections:Landroid/util/SparseArray;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 41
    move-result p3

    .line 42
    sub-int/2addr p3, p4

    .line 43
    .line 44
    :goto_0
    if-ltz p3, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateSections:Landroid/util/SparseArray;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 50
    move-result v0

    .line 51
    .line 52
    if-ge v0, p2, :cond_1

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateSections:Landroid/util/SparseArray;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 58
    move-result p3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    check-cast p2, Ljava/lang/String;

    .line 65
    .line 66
    iput-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    if-nez p1, :cond_3

    .line 77
    return-void

    .line 78
    .line 79
    :cond_3
    sget p2, Lcom/narvii/lib/R$id;->list_time_section_name:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 83
    move-result-object p2

    .line 84
    const/4 p3, 0x0

    .line 85
    .line 86
    if-nez p2, :cond_4

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    .line 89
    .line 90
    check-cast p1, Landroid/widget/TextView;

    .line 91
    .line 92
    iget-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    .line 101
    goto :goto_3

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 105
    move-result p1

    .line 106
    int-to-float p1, p1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    sget p4, Lcom/narvii/lib/R$dimen;->section_header_height:I

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 116
    move-result p2

    .line 117
    sub-float/2addr p1, p2

    .line 118
    float-to-int p1, p1

    .line 119
    .line 120
    if-gtz p1, :cond_6

    .line 121
    int-to-float p1, p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 129
    move-result p2

    .line 130
    .line 131
    const/high16 p4, -0x40800000    # -1.0f

    .line 132
    mul-float/2addr p2, p4

    .line 133
    .line 134
    cmpg-float p2, p1, p2

    .line 135
    .line 136
    if-gez p2, :cond_5

    .line 137
    goto :goto_2

    .line 138
    .line 139
    :cond_5
    iget-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    .line 143
    goto :goto_3

    .line 144
    .line 145
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    .line 149
    .line 150
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    .line 151
    .line 152
    check-cast p1, Landroid/widget/TextView;

    .line 153
    .line 154
    iget-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_3
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->updateSectionOverLay(Landroid/widget/AbsListView;III)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->moderationHistoryAdapter:Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;

    .line 8
    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string/jumbo v0, "title"

    .line 6
    .line 7
    const-string v1, "operatorId"

    .line 8
    .line 9
    const-string v2, "objectType"

    .line 10
    .line 11
    const-string v3, "objectId"

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectId:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 23
    move-result p1

    .line 24
    .line 25
    iput p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectType:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->title:Ljava/lang/String;

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    iput-object v3, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectId:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 48
    move-result v2

    .line 49
    .line 50
    iput v2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectType:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    iput-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->title:Ljava/lang/String;

    .line 63
    .line 64
    const-string v0, "dateSection"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    .line 71
    :goto_0
    const/4 p1, 0x1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->title:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result p1

    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    sget p1, Lcom/narvii/lib/R$string;->moderation_history:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_1
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->title:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->list_layout_with_section:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "objectId"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "objectType"

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectType:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    const-string v0, "operatorId"

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    const-string/jumbo v0, "title"

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->title:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    const-string v0, "dateSection"

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p2, Lcom/narvii/lib/R$id;->section_header_overlay:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$1;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 26
    return-void
.end method

.method protected updateViews()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_1
    return-void
.end method
