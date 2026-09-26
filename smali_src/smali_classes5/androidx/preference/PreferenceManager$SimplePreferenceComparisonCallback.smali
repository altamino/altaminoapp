.class public Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;
.super Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePreferenceComparisonCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 3
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    return v2

    .line 13
    .line 14
    :cond_0
    if-ne p1, p2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/preference/Preference;->x0()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    return v2

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->B()Ljava/lang/CharSequence;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/preference/Preference;->B()Ljava/lang/CharSequence;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    return v2

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->z()Ljava/lang/CharSequence;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroidx/preference/Preference;->z()Ljava/lang/CharSequence;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    return v2

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->n()Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroidx/preference/Preference;->n()Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    if-eq v0, v1, :cond_5

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-nez v0, :cond_5

    .line 70
    :cond_4
    return v2

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->F()Z

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Landroidx/preference/Preference;->F()Z

    .line 78
    move-result v1

    .line 79
    .line 80
    if-eq v0, v1, :cond_6

    .line 81
    return v2

    .line 82
    .line 83
    .line 84
    :cond_6
    invoke-virtual {p1}, Landroidx/preference/Preference;->H()Z

    .line 85
    move-result v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroidx/preference/Preference;->H()Z

    .line 89
    move-result v1

    .line 90
    .line 91
    if-eq v0, v1, :cond_7

    .line 92
    return v2

    .line 93
    .line 94
    :cond_7
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    .line 95
    .line 96
    if-eqz v0, :cond_8

    .line 97
    move-object v0, p1

    .line 98
    .line 99
    check-cast v0, Landroidx/preference/TwoStatePreference;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->y0()Z

    .line 103
    move-result v0

    .line 104
    move-object v1, p2

    .line 105
    .line 106
    check-cast v1, Landroidx/preference/TwoStatePreference;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->y0()Z

    .line 110
    move-result v1

    .line 111
    .line 112
    if-eq v0, v1, :cond_8

    .line 113
    return v2

    .line 114
    .line 115
    :cond_8
    instance-of v0, p1, Landroidx/preference/DropDownPreference;

    .line 116
    .line 117
    if-eqz v0, :cond_9

    .line 118
    .line 119
    if-eq p1, p2, :cond_9

    .line 120
    return v2

    .line 121
    :cond_9
    const/4 p1, 0x1

    .line 122
    return p1
.end method

.method public b(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 2
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/preference/Preference;->o()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/preference/Preference;->o()J

    .line 8
    move-result-wide p1

    .line 9
    .line 10
    cmp-long p1, v0, p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method
