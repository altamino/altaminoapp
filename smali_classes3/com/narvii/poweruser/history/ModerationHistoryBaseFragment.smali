.class public Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ModerationHistoryBaseFragment.java"


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

    .line 31
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMMM d"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateSections:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;Landroid/widget/AbsListView;III)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->updateSectionOverLay(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectType:I

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    return-object p0
.end method

.method private updateSectionOverLay(Landroid/widget/AbsListView;III)V
    .locals 1

    const/4 p3, 0x0

    .line 126
    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    .line 128
    sget v0, Lcom/narvii/lib/R$id;->list_time_section_name:I

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 130
    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    .line 131
    iget-object p3, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateSections:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    iget-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_0
    iget-object p3, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateSections:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    sub-int/2addr p3, p4

    :goto_0
    if-ltz p3, :cond_2

    .line 135
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateSections:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 136
    iget-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->dateSections:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 142
    :cond_2
    :goto_1
    invoke-virtual {p1, p4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 144
    :cond_3
    sget p2, Lcom/narvii/lib/R$id;->list_time_section_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_4

    .line 146
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    goto :goto_3

    .line 149
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/narvii/lib/R$dimen;->section_header_height:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    if-gtz p1, :cond_6

    int-to-float p1, p1

    const/high16 p2, -0x40800000    # -1.0f

    .line 150
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/narvii/lib/R$dimen;->section_header_height:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    mul-float p4, p4, p2

    cmpg-float p2, p1, p4

    if-gez p2, :cond_5

    goto :goto_2

    .line 154
    :cond_5
    iget-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    goto :goto_3

    .line 151
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    .line 152
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 161
    new-instance p1, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$ModerationHistorySectionAdapter;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)V

    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->moderationHistoryAdapter:Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;

    .line 162
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->moderationHistoryAdapter:Lcom/narvii/poweruser/history/ModerationHistoryBaseAdapter;

    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 62
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "title"

    const-string v1, "operatorId"

    const-string v2, "objectType"

    const-string v3, "objectId"

    if-nez p1, :cond_0

    .line 64
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectId:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectType:I

    .line 66
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->title:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectId:Ljava/lang/String;

    .line 70
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectType:I

    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->title:Ljava/lang/String;

    const-string v0, "dateSection"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 77
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    sget p1, Lcom/narvii/lib/R$string;->moderation_history:I

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 88
    sget p3, Lcom/narvii/lib/R$layout;->list_layout_with_section:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x2

    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectId:Ljava/lang/String;

    const-string v1, "objectId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->objectType:I

    const-string v1, "objectType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->operatorId:Ljava/lang/String;

    const-string v1, "operatorId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->title:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->curSectionText:Ljava/lang/String;

    const-string v1, "dateSection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    sget p2, Lcom/narvii/lib/R$id;->section_header_overlay:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    .line 95
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 96
    new-instance p2, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment$1;-><init>(Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method protected updateViews()V
    .locals 2

    .line 287
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 288
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/narvii/poweruser/history/ModerationHistoryBaseFragment;->sectionHeaderOverlay:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 290
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
