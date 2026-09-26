.class public final Landroidx/core/widget/PopupWindowCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/PopupWindowCompat$Api19Impl;,
        Landroidx/core/widget/PopupWindowCompat$Api23Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindowCompatApi21"

.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sOverlapAnchorField:Ljava/lang/reflect/Field;

.field private static sOverlapAnchorFieldAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/widget/PopupWindowCompat$Api23Impl;->c(Landroid/widget/PopupWindow;Z)V

    .line 4
    return-void
.end method

.method public static b(Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/core/widget/PopupWindowCompat$Api23Impl;->d(Landroid/widget/PopupWindow;I)V

    .line 4
    return-void
.end method

.method public static c(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 0
    .param p0    # Landroid/widget/PopupWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/widget/PopupWindowCompat$Api19Impl;->a(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 4
    return-void
.end method
