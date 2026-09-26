.class public final Landroidx/compose/ui/text/intl/AndroidPlatformLocale_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Landroidx/compose/ui/text/intl/PlatformLocaleDelegate;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;-><init>()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI23;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI23;-><init>()V

    .line 18
    :goto_0
    return-object v0
.end method
