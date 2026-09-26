.class Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/hangout/HangoutListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation


# instance fields
.field stated:Z

.field final synthetic this$0:Lcom/narvii/chat/hangout/HangoutListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/hangout/HangoutListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d06b4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/widget/SearchBar;

    .line 16
    .line 17
    iput-object p2, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 25
    .line 26
    const-string p1, "config"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 48
    move-result p1

    .line 49
    .line 50
    iget-object p2, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 60
    .line 61
    .line 62
    const p2, 0x7f0a0caa

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    check-cast p1, Landroid/widget/EditText;

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    const/4 p2, -0x1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    const p2, -0x7f000001

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    .line 90
    const p3, 0x7f080903

    .line 91
    .line 92
    .line 93
    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 102
    .line 103
    .line 104
    const p2, 0x7f0a0ca0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    if-eqz p1, :cond_2

    .line 111
    .line 112
    .line 113
    const p2, 0x3ecccccd    # 0.4f

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 117
    .line 118
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/narvii/chat/hangout/HangoutListFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 121
    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->stated:Z

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const-string p1, "statistics"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 26
    .line 27
    const-string p2, "Search for Public Chats"

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    const-string p2, "Public Chatrooms"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string p2, "Search for Public Chats Total"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 43
    const/4 p1, 0x1

    .line 44
    .line 45
    iput-boolean p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$SearchAdapter;->stated:Z

    .line 46
    :cond_0
    return-void
.end method
