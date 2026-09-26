.class public final Landroidx/compose/ui/focus/FocusManagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusManagerKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusManager.kt\nandroidx/compose/ui/focus/FocusManagerKt\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,218:1\n460#2,11:219\n*S KotlinDebug\n*F\n+ 1 FocusManager.kt\nandroidx/compose/ui/focus/FocusManagerKt\n*L\n202#1:219,11\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusManagerKt;->c(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusManagerKt;->d(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 4
    return-void
.end method

.method private static final c(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->h()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/ui/focus/FocusManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v0

    .line 11
    .line 12
    aget v0, v1, v0

    .line 13
    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    new-instance p0, Lw7/s;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 21
    throw p0

    .line 22
    :pswitch_0
    const/4 p0, 0x0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :pswitch_1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->i()Landroidx/compose/ui/focus/FocusModifier;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusManagerKt;->c(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "no child"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0

    .line 49
    :goto_0
    :pswitch_2
    return-object p0

    .line 50
    nop

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final d(Landroidx/compose/ui/focus/FocusModifier;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusPropertiesKt;->d(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->c()Landroidx/compose/runtime/collection/MutableVector;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->n()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->m()[Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    :cond_0
    aget-object v2, p0, v1

    .line 21
    .line 22
    check-cast v2, Landroidx/compose/ui/focus/FocusModifier;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusManagerKt;->d(Landroidx/compose/ui/focus/FocusModifier;)V

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    if-lt v1, v0, :cond_0

    .line 30
    :cond_1
    return-void
.end method
