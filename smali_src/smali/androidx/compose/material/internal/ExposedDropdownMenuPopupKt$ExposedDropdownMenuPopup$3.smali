.class final Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt;->a(Le8/a;Landroidx/compose/ui/window/PopupPositionProvider;Le8/p;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenuPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,471:1\n62#2,5:472\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenuPopup.kt\nandroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3\n*L\n142#1:472,5\n*E\n"
.end annotation


# instance fields
.field final synthetic $popupLayout:Landroidx/compose/material/internal/PopupLayout;

.field final synthetic $popupPositionProvider:Landroidx/compose/ui/window/PopupPositionProvider;


# direct methods
.method constructor <init>(Landroidx/compose/material/internal/PopupLayout;Landroidx/compose/ui/window/PopupPositionProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->$popupLayout:Landroidx/compose/material/internal/PopupLayout;

    iput-object p2, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->$popupPositionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1
    .param p1    # Landroidx/compose/runtime/DisposableEffectScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$DisposableEffect"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->$popupLayout:Landroidx/compose/material/internal/PopupLayout;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->$popupPositionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/compose/material/internal/PopupLayout;->setPositionProvider(Landroidx/compose/ui/window/PopupPositionProvider;)V

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->$popupLayout:Landroidx/compose/material/internal/PopupLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/material/internal/PopupLayout;->t()V

    .line 18
    .line 19
    new-instance p1, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3$invoke$$inlined$onDispose$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3$invoke$$inlined$onDispose$1;-><init>()V

    .line 23
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3;->a(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
