.class public Lcom/narvii/adapter/NVPagerStatusAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# static fields
.field public static final VIEW_TYPE_EMPTY:I = -0x1

.field public static final VIEW_TYPE_ERROR:I = -0x2

.field public static final VIEW_TYPE_LOADING:I = -0x3


# instance fields
.field protected boundAdapter:Lcom/narvii/list/NVAdapter;

.field private emptyListener:Landroid/view/View$OnClickListener;

.field private errorListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/adapter/NVPagerStatusAdapter$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/adapter/NVPagerStatusAdapter$1;-><init>(Lcom/narvii/adapter/NVPagerStatusAdapter;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->emptyListener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/adapter/NVPagerStatusAdapter$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/adapter/NVPagerStatusAdapter$2;-><init>(Lcom/narvii/adapter/NVPagerStatusAdapter;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->errorListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method


# virtual methods
.method public createEmptyView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->emptyLayoutId()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->emptyListener:Landroid/view/View$OnClickListener;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    sget p2, Lcom/narvii/lib/R$id;->empty_text:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    check-cast p2, Landroid/widget/TextView;

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    const v0, -0xaaaaab

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    sget p2, Lcom/narvii/lib/R$id;->empty_retry:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    instance-of v0, p2, Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    move-object v0, p2

    .line 54
    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    iget-boolean v2, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 62
    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 67
    move-result v2

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    goto :goto_2

    .line 71
    .line 72
    :cond_2
    sget v2, Lcom/narvii/lib/R$color;->button_text_gray_w:I

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_3
    :goto_2
    sget v2, Lcom/narvii/lib/R$color;->button_text_light:I

    .line 76
    .line 77
    .line 78
    :goto_3
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 79
    move-result v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    :cond_4
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->emptyListener:Landroid/view/View$OnClickListener;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    sget p2, Lcom/narvii/lib/R$id;->main:I

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getMinHeight()I

    .line 97
    move-result v1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getMinHeight()I

    .line 108
    move-result v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 112
    return-object p1
.end method

.method public createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    sget v1, Lcom/narvii/lib/R$layout;->status_error_view:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->errorListener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    sget p2, Lcom/narvii/lib/R$id;->text:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    check-cast p2, Landroid/widget/TextView;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    sget v2, Lcom/narvii/lib/R$string;->normal_error_offline1:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "\n"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    sget v2, Lcom/narvii/lib/R$string;->normal_error_offline2:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lcom/narvii/util/Utils;->isDeviceOffline(Landroid/content/Context;)Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_0

    .line 72
    move-object p3, v0

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 78
    const/4 v0, -0x1

    .line 79
    .line 80
    .line 81
    const v1, -0xaaaaab

    .line 82
    .line 83
    if-nez p3, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 87
    move-result p3

    .line 88
    .line 89
    if-eqz p3, :cond_1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move p3, v1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_0
    move p3, v0

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    sget p2, Lcom/narvii/lib/R$id;->error:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    check-cast p2, Landroid/widget/TextView;

    .line 105
    .line 106
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 107
    .line 108
    if-nez p3, :cond_4

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 112
    move-result p3

    .line 113
    .line 114
    if-eqz p3, :cond_3

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move v0, v1

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    .line 121
    sget p2, Lcom/narvii/lib/R$id;->retry:I

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    check-cast p2, Landroid/widget/TextView;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 131
    move-result-object p3

    .line 132
    .line 133
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 134
    .line 135
    if-nez v0, :cond_6

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 139
    move-result v0

    .line 140
    .line 141
    if-eqz v0, :cond_5

    .line 142
    goto :goto_3

    .line 143
    .line 144
    :cond_5
    sget v0, Lcom/narvii/lib/R$color;->button_text_gray_w:I

    .line 145
    goto :goto_4

    .line 146
    .line 147
    :cond_6
    :goto_3
    sget v0, Lcom/narvii/lib/R$color;->button_text_light:I

    .line 148
    .line 149
    .line 150
    :goto_4
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 151
    move-result p3

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    iget-object p3, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->errorListener:Landroid/view/View$OnClickListener;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    sget p2, Lcom/narvii/lib/R$id;->main:I

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object p2

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getMinHeight()I

    .line 169
    move-result p3

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 173
    return-object p1
.end method

.method public createLoadingView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    sget v1, Lcom/narvii/lib/R$layout;->status_loading_view:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    sget p2, Lcom/narvii/lib/R$id;->main:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getMinHeight()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 22
    .line 23
    sget p2, Lcom/narvii/lib/R$id;->loading:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, Lcom/narvii/widget/SpinningView;

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    const v0, -0xaaaaab

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p2, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 49
    return-object p1
.end method

.method protected emptyLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->status_empty_view:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, -0x2

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    return p1
.end method

.method protected getMinHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/adapter/NVPagerStatusAdapter;->getItemViewType(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, -0x3

    .line 12
    .line 13
    if-eq p1, v1, :cond_2

    .line 14
    const/4 v1, -0x2

    .line 15
    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    const/4 v0, -0x1

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;->createEmptyView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, p3, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;->createEmptyView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0, p3, p2, v0}, Lcom/narvii/adapter/NVPagerStatusAdapter;->createErrorItem(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0, p3, p2}, Lcom/narvii/adapter/NVPagerStatusAdapter;->createLoadingView(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected onEmptyClickRetry()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 8
    return-void
.end method

.method protected onErrorClickRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    .line 6
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/narvii/list/NVAdapter;

    iput-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not NVPagedAdapter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Ljava/lang/Boolean;)V
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcom/narvii/list/NVAdapter;

    iput-object p1, p0, Lcom/narvii/adapter/NVPagerStatusAdapter;->boundAdapter:Lcom/narvii/list/NVAdapter;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not NVPagedAdapter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
