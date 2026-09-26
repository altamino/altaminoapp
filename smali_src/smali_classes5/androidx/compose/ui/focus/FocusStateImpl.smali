.class public final enum Landroidx/compose/ui/focus/FocusStateImpl;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/focus/FocusState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/focus/FocusStateImpl;",
        ">;",
        "Landroidx/compose/ui/focus/FocusState;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum Active:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum Captured:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum Deactivated:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum DeactivatedParent:Landroidx/compose/ui/focus/FocusStateImpl;

.field public static final enum Inactive:Landroidx/compose/ui/focus/FocusStateImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 3
    .line 4
    const-string v1, "Active"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 13
    .line 14
    const-string v1, "ActiveParent"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 23
    .line 24
    const-string v1, "Captured"

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 31
    .line 32
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 33
    .line 34
    const-string v1, "Deactivated"

    .line 35
    const/4 v2, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Deactivated:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 41
    .line 42
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 43
    .line 44
    const-string v1, "DeactivatedParent"

    .line 45
    const/4 v2, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->DeactivatedParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 51
    .line 52
    new-instance v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 53
    .line 54
    const-string v1, "Inactive"

    .line 55
    const/4 v2, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/focus/FocusStateImpl;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroidx/compose/ui/focus/FocusStateImpl;->b()[Landroidx/compose/ui/focus/FocusStateImpl;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    sput-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->$VALUES:[Landroidx/compose/ui/focus/FocusStateImpl;

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method private static final synthetic b()[Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 3

    .line 1
    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/compose/ui/focus/FocusStateImpl;

    const/4 v1, 0x0

    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Deactivated:Landroidx/compose/ui/focus/FocusStateImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->DeactivatedParent:Landroidx/compose/ui/focus/FocusStateImpl;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 1

    const-class v0, Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/focus/FocusStateImpl;

    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/focus/FocusStateImpl;
    .locals 1

    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->$VALUES:[Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/ui/focus/FocusStateImpl;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    new-instance v0, Lw7/s;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 17
    throw v0

    .line 18
    :pswitch_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0

    .line 22
    nop

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    new-instance v0, Lw7/s;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 17
    throw v0

    .line 18
    :pswitch_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0

    .line 22
    nop

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    new-instance v0, Lw7/s;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 17
    throw v0

    .line 18
    :pswitch_0
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0

    .line 22
    nop

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
