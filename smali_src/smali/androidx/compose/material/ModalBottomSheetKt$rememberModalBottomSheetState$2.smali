.class final Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ModalBottomSheetKt;->i(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ModalBottomSheetState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Landroidx/compose/material/ModalBottomSheetState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $confirmStateChange:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/material/ModalBottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $initialValue:Landroidx/compose/material/ModalBottomSheetValue;

.field final synthetic $skipHalfExpanded:Z


# direct methods
.method constructor <init>(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/ModalBottomSheetValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;Z",
            "Le8/l<",
            "-",
            "Landroidx/compose/material/ModalBottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;->$initialValue:Landroidx/compose/material/ModalBottomSheetValue;

    iput-object p2, p0, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-boolean p3, p0, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;->$skipHalfExpanded:Z

    iput-object p4, p0, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;->$confirmStateChange:Le8/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/compose/material/ModalBottomSheetState;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/material/ModalBottomSheetState;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;->$initialValue:Landroidx/compose/material/ModalBottomSheetValue;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;->$animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 7
    .line 8
    iget-boolean v3, p0, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;->$skipHalfExpanded:Z

    .line 9
    .line 10
    iget-object v4, p0, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;->$confirmStateChange:Le8/l;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/material/ModalBottomSheetState;-><init>(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;)V

    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;->b()Landroidx/compose/material/ModalBottomSheetState;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
