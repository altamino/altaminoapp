.class public Lcom/narvii/util/debug/DebugPrefsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private crashReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/list/prefs/PrefsItem;",
            ">;"
        }
    .end annotation
.end field

.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/debug/DebugPrefsHelper;->crashReports:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/util/debug/DebugPrefsHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/util/debug/DebugPrefsHelper;->initCrashReports()V

    .line 16
    return-void
.end method

.method private initCrashReports()V
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/debug/DebugPrefsHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/Utils;->getAvailableFileDir(Landroid/content/Context;)Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    const-string v2, "CrashReport"

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "yyyyMMdd-HHmmss"

    .line 29
    .line 30
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    move-result-wide v2

    .line 38
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    array-length v5, v0

    .line 44
    const/4 v6, 0x0

    .line 45
    move v7, v6

    .line 46
    .line 47
    :goto_0
    if-ge v7, v5, :cond_1

    .line 48
    .line 49
    aget-object v8, v0, v7

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    move-result-object v9

    .line 54
    .line 55
    const-string v10, ".log"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 59
    move-result v10

    .line 60
    .line 61
    if-eqz v10, :cond_0

    .line 62
    .line 63
    .line 64
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 65
    move-result v10

    .line 66
    .line 67
    add-int/lit8 v10, v10, -0x4

    .line 68
    .line 69
    .line 70
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    move-result-object v9

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 75
    move-result-object v9

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    .line 79
    move-result-wide v9

    .line 80
    .line 81
    sub-long v9, v2, v9

    .line 82
    .line 83
    .line 84
    const-wide/32 v11, 0x5265c00

    .line 85
    .line 86
    cmp-long v9, v9, v11

    .line 87
    .line 88
    if-gez v9, :cond_0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    :catch_0
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_1
    new-instance v0, Lcom/narvii/util/debug/DebugPrefsHelper$1;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, p0}, Lcom/narvii/util/debug/DebugPrefsHelper$1;-><init>(Lcom/narvii/util/debug/DebugPrefsHelper;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 106
    move-result v0

    .line 107
    .line 108
    add-int/lit8 v0, v0, -0x1

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 112
    move-result v1

    .line 113
    .line 114
    add-int/lit8 v1, v1, -0x5

    .line 115
    .line 116
    .line 117
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 118
    move-result v1

    .line 119
    .line 120
    :goto_1
    if-lt v0, v1, :cond_2

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    check-cast v2, Ljava/io/File;

    .line 127
    .line 128
    const-class v3, Lcom/narvii/util/debug/CrashReportFragment;

    .line 129
    .line 130
    .line 131
    invoke-static {v3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    move-result-object v3

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 136
    move-result-object v5

    .line 137
    .line 138
    const-string v6, "path"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    .line 143
    new-instance v5, Lcom/narvii/list/prefs/PrefsEntry;

    .line 144
    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    const-string v7, "Crash "

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    invoke-direct {v5, v2}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    iput-object v3, v5, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 170
    .line 171
    iget-object v2, p0, Lcom/narvii/util/debug/DebugPrefsHelper;->crashReports:Ljava/util/ArrayList;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    add-int/lit8 v0, v0, -0x1

    .line 177
    goto :goto_1

    .line 178
    :cond_2
    return-void
.end method


# virtual methods
.method public addCells(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/prefs/PrefsSection;

    .line 3
    .line 4
    const-string v1, "Debug"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsSection;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/debug/DebugPrefsHelper;->crashReports:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 18
    .line 19
    const-string v1, "Device Info"

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    const-class v1, Lcom/narvii/util/debug/DebugInfoFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    new-instance v0, Lcom/narvii/list/prefs/PrefsEntry;

    .line 36
    .line 37
    const-string v1, "Toggle Options"

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/narvii/list/prefs/PrefsEntry;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    const-class v1, Lcom/narvii/util/debug/ToggleOptionsFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    iput-object v1, v0, Lcom/narvii/list/prefs/PrefsEntry;->callbackIntent:Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method
