.class final Landroidx/preference/ExpandButton;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private mId:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;J)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/preference/ExpandButton;->y0()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Landroidx/preference/ExpandButton;->z0(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    const-wide/32 p1, 0xf4240

    .line 13
    add-long/2addr p3, p1

    .line 14
    .line 15
    iput-wide p3, p0, Landroidx/preference/ExpandButton;->mId:J

    .line 16
    return-void
.end method

.method private y0()V
    .locals 1

    .line 1
    .line 2
    sget v0, Landroidx/preference/R$layout;->expand_button:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->k0(I)V

    .line 6
    .line 7
    sget v0, Landroidx/preference/R$drawable;->ic_arrow_down_24dp:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->i0(I)V

    .line 11
    .line 12
    sget v0, Landroidx/preference/R$string;->expand_button_title:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->q0(I)V

    .line 16
    .line 17
    const/16 v0, 0x3e7

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->n0(I)V

    .line 21
    return-void
.end method

.method private z0(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Landroidx/preference/Preference;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/preference/Preference;->B()Ljava/lang/CharSequence;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    instance-of v4, v2, Landroidx/preference/PreferenceGroup;

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v5

    .line 35
    .line 36
    if-nez v5, :cond_1

    .line 37
    move-object v5, v2

    .line 38
    .line 39
    check-cast v5, Landroidx/preference/PreferenceGroup;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v2}, Landroidx/preference/Preference;->s()Landroidx/preference/PreferenceGroup;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 50
    move-result v5

    .line 51
    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    check-cast v2, Landroidx/preference/PreferenceGroup;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v2

    .line 65
    .line 66
    if-nez v2, :cond_0

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    move-object v1, v3

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()Landroid/content/Context;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    sget v4, Landroidx/preference/R$string;->summary_collapsed_preference_list:I

    .line 77
    const/4 v5, 0x2

    .line 78
    .line 79
    new-array v5, v5, [Ljava/lang/Object;

    .line 80
    const/4 v6, 0x0

    .line 81
    .line 82
    aput-object v1, v5, v6

    .line 83
    const/4 v1, 0x1

    .line 84
    .line 85
    aput-object v3, v5, v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->o0(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method


# virtual methods
.method public N(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1    # Landroidx/preference/PreferenceViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/preference/Preference;->N(Landroidx/preference/PreferenceViewHolder;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->e(Z)V

    .line 8
    return-void
.end method

.method o()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/preference/ExpandButton;->mId:J

    return-wide v0
.end method
