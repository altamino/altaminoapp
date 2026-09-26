.class public final Landroidx/compose/foundation/text/MappedKeys;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:J

.field private static final Backslash:J

.field private static final Backspace:J

.field private static final C:J

.field private static final Cut:J

.field private static final Delete:J

.field private static final DirectionDown:J

.field private static final DirectionLeft:J

.field private static final DirectionRight:J

.field private static final DirectionUp:J

.field private static final Enter:J

.field private static final H:J

.field public static final INSTANCE:Landroidx/compose/foundation/text/MappedKeys;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Insert:J

.field private static final MoveEnd:J

.field private static final MoveHome:J

.field private static final PageDown:J

.field private static final PageUp:J

.field private static final Paste:J

.field private static final Tab:J

.field private static final V:J

.field private static final X:J

.field private static final Z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/MappedKeys;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/foundation/text/MappedKeys;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 8
    .line 9
    const/16 v0, 0x1d

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->A:J

    .line 16
    .line 17
    const/16 v0, 0x1f

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->C:J

    .line 24
    .line 25
    const/16 v0, 0x24

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 29
    move-result-wide v0

    .line 30
    .line 31
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->H:J

    .line 32
    .line 33
    const/16 v0, 0x32

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 37
    move-result-wide v0

    .line 38
    .line 39
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->V:J

    .line 40
    .line 41
    const/16 v0, 0x34

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 45
    move-result-wide v0

    .line 46
    .line 47
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->X:J

    .line 48
    .line 49
    const/16 v0, 0x36

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 53
    move-result-wide v0

    .line 54
    .line 55
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Z:J

    .line 56
    .line 57
    const/16 v0, 0x49

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Backslash:J

    .line 64
    .line 65
    const/16 v0, 0x15

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 69
    move-result-wide v0

    .line 70
    .line 71
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionLeft:J

    .line 72
    .line 73
    const/16 v0, 0x16

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 77
    move-result-wide v0

    .line 78
    .line 79
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionRight:J

    .line 80
    .line 81
    const/16 v0, 0x13

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 85
    move-result-wide v0

    .line 86
    .line 87
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionUp:J

    .line 88
    .line 89
    const/16 v0, 0x14

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 93
    move-result-wide v0

    .line 94
    .line 95
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionDown:J

    .line 96
    .line 97
    const/16 v0, 0x5c

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 101
    move-result-wide v0

    .line 102
    .line 103
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageUp:J

    .line 104
    .line 105
    const/16 v0, 0x5d

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 109
    move-result-wide v0

    .line 110
    .line 111
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageDown:J

    .line 112
    .line 113
    const/16 v0, 0x7a

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 117
    move-result-wide v0

    .line 118
    .line 119
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveHome:J

    .line 120
    .line 121
    const/16 v0, 0x7b

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 125
    move-result-wide v0

    .line 126
    .line 127
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveEnd:J

    .line 128
    .line 129
    const/16 v0, 0x7c

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 133
    move-result-wide v0

    .line 134
    .line 135
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Insert:J

    .line 136
    .line 137
    const/16 v0, 0x42

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 141
    move-result-wide v0

    .line 142
    .line 143
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Enter:J

    .line 144
    .line 145
    const/16 v0, 0x43

    .line 146
    .line 147
    .line 148
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 149
    move-result-wide v0

    .line 150
    .line 151
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Backspace:J

    .line 152
    .line 153
    const/16 v0, 0x70

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 157
    move-result-wide v0

    .line 158
    .line 159
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Delete:J

    .line 160
    .line 161
    const/16 v0, 0x117

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 165
    move-result-wide v0

    .line 166
    .line 167
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Paste:J

    .line 168
    .line 169
    const/16 v0, 0x115

    .line 170
    .line 171
    .line 172
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 173
    move-result-wide v0

    .line 174
    .line 175
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Cut:J

    .line 176
    .line 177
    const/16 v0, 0x3d

    .line 178
    .line 179
    .line 180
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    .line 181
    move-result-wide v0

    .line 182
    .line 183
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Tab:J

    .line 184
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->A:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Backslash:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Backspace:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->C:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Cut:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Delete:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionDown:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionLeft:J

    return-wide v0
.end method

.method public final i()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionRight:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionUp:J

    return-wide v0
.end method

.method public final k()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Enter:J

    return-wide v0
.end method

.method public final l()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->H:J

    return-wide v0
.end method

.method public final m()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Insert:J

    return-wide v0
.end method

.method public final n()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveEnd:J

    return-wide v0
.end method

.method public final o()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveHome:J

    return-wide v0
.end method

.method public final p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageDown:J

    return-wide v0
.end method

.method public final q()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageUp:J

    return-wide v0
.end method

.method public final r()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Paste:J

    return-wide v0
.end method

.method public final s()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Tab:J

    return-wide v0
.end method

.method public final t()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->V:J

    return-wide v0
.end method

.method public final u()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->X:J

    return-wide v0
.end method

.method public final v()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Z:J

    return-wide v0
.end method
