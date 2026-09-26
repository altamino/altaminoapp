.class Lcom/narvii/services/AppLogEventServiceProvider$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/AppLogEventServiceProvider;->tryLogVIInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/AppLogEventServiceProvider;


# direct methods
.method constructor <init>(Lcom/narvii/services/AppLogEventServiceProvider;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/AppLogEventServiceProvider$4;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "viInfo"

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/narvii/services/AppLogEventServiceProvider$4;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 44
    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-static {v6}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v6

    .line 52
    .line 53
    if-nez v6, :cond_0

    .line 54
    .line 55
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    const/16 v6, 0x80

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    .line 70
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v6

    .line 72
    .line 73
    if-nez v6, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v2

    .line 83
    goto :goto_4

    .line 84
    :catch_0
    move-exception v2

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_1
    iget-object v2, p0, Lcom/narvii/services/AppLogEventServiceProvider$4;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    .line 88
    .line 89
    const-string v3, ","

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v3}, Lcom/narvii/services/AppLogEventServiceProvider;->a(Lcom/narvii/services/AppLogEventServiceProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    :goto_1
    iget-object v2, p0, Lcom/narvii/services/AppLogEventServiceProvider$4;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    .line 100
    .line 101
    iget-object v2, v2, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    .line 102
    .line 103
    .line 104
    invoke-static {v2}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->appEvent()Lcom/narvii/logging/LogEvent$Builder;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    sget-object v3, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    sget-object v3, Lcom/narvii/logging/ActSemantic;->at:Lcom/narvii/logging/ActSemantic;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 129
    goto :goto_3

    .line 130
    .line 131
    .line 132
    :goto_2
    :try_start_1
    invoke-static {v0, v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    goto :goto_1

    .line 134
    :goto_3
    return-void

    .line 135
    .line 136
    :goto_4
    iget-object v3, p0, Lcom/narvii/services/AppLogEventServiceProvider$4;->this$0:Lcom/narvii/services/AppLogEventServiceProvider;

    .line 137
    .line 138
    iget-object v3, v3, Lcom/narvii/services/AppLogEventServiceProvider;->nvContext:Lcom/narvii/app/NVContext;

    .line 139
    .line 140
    .line 141
    invoke-static {v3}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 142
    move-result-object v3

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/narvii/logging/LogEvent$Builder;->appEvent()Lcom/narvii/logging/LogEvent$Builder;

    .line 146
    move-result-object v3

    .line 147
    .line 148
    sget-object v4, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v4}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 152
    move-result-object v3

    .line 153
    .line 154
    sget-object v4, Lcom/narvii/logging/ActSemantic;->at:Lcom/narvii/logging/ActSemantic;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v4}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 158
    move-result-object v3

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 166
    throw v2
.end method
