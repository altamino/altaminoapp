.class final Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ModalBottomSheetKt;->b(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $color:J

.field final synthetic $onDismiss:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $visible:Z


# direct methods
.method constructor <init>(JLe8/a;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le8/a<",
            "Lw7/l0;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;->$color:J

    iput-object p3, p0, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;->$onDismiss:Le8/a;

    iput-boolean p4, p0, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;->$visible:Z

    iput p5, p0, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 6
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;->$color:J

    iget-object v2, p0, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;->$onDismiss:Le8/a;

    iget-boolean v3, p0, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;->$visible:Z

    iget p2, p0, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;->$$changed:I

    or-int/lit8 v5, p2, 0x1

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/material/ModalBottomSheetKt;->d(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
