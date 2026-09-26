.class Lcom/narvii/detail/FeedDetailFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 6
    .line 7
    iget-boolean v0, p2, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p2, Lcom/narvii/detail/FeedDetailFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/narvii/detail/FeedDetailFragment;->D(Lcom/narvii/detail/FeedDetailFragment;)Lcom/narvii/amino/CommunityPreferenceHelper;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/narvii/amino/CommunityPreferenceHelper;->getJoinAminoShowBefore()Z

    .line 21
    move-result p2

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    instance-of p2, p2, Lcom/narvii/semicontext/SemiActivity;

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    check-cast p2, Lcom/narvii/semicontext/SemiActivity;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0a007d

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 59
    .line 60
    new-instance v1, Lcom/narvii/util/ToolTipHelper;

    .line 61
    .line 62
    .line 63
    invoke-direct {v1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    .line 64
    .line 65
    iput-object v1, v0, Lcom/narvii/detail/FeedDetailFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    .line 76
    const v0, 0x7f1211d7

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Lcom/narvii/util/Tooltip$Builder;->isRightAlign(Z)Lcom/narvii/util/Tooltip$Builder;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->endFinger()Lcom/narvii/util/Tooltip$Builder;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    new-instance p2, Lcom/narvii/detail/FeedDetailFragment$9$1;

    .line 91
    .line 92
    .line 93
    invoke-direct {p2, p0}, Lcom/narvii/detail/FeedDetailFragment$9$1;-><init>(Lcom/narvii/detail/FeedDetailFragment$9;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Lcom/narvii/util/Tooltip$Builder;->onClickListener(Landroid/view/View$OnClickListener;)Lcom/narvii/util/Tooltip$Builder;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 104
    .line 105
    iget-object p2, p2, Lcom/narvii/detail/FeedDetailFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 111
    .line 112
    new-instance p2, Lcom/narvii/detail/FeedDetailFragment$9$2;

    .line 113
    .line 114
    .line 115
    invoke-direct {p2, p0}, Lcom/narvii/detail/FeedDetailFragment$9$2;-><init>(Lcom/narvii/detail/FeedDetailFragment$9;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->G(Lcom/narvii/detail/FeedDetailFragment;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 121
    .line 122
    .line 123
    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->D(Lcom/narvii/detail/FeedDetailFragment;)Lcom/narvii/amino/CommunityPreferenceHelper;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/narvii/amino/CommunityPreferenceHelper;->getPrefs()Landroid/content/SharedPreferences;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 131
    .line 132
    .line 133
    invoke-static {p2}, Lcom/narvii/detail/FeedDetailFragment;->C(Lcom/narvii/detail/FeedDetailFragment;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 138
    :cond_0
    return-void
.end method
