.class final Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ProgressIndicatorKt;->h(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V
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

.field final synthetic $$default:I

.field final synthetic $backgroundColor:J

.field final synthetic $color:J

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $progress:F


# direct methods
.method constructor <init>(FLandroidx/compose/ui/Modifier;JJII)V
    .locals 0

    iput p1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$progress:F

    iput-object p2, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$color:J

    iput-wide p5, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$backgroundColor:J

    iput p7, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$$changed:I

    iput p8, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 9
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$progress:F

    iget-object v1, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$color:J

    iget-wide v4, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$backgroundColor:J

    iget p2, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$$changed:I

    or-int/lit8 v7, p2, 0x1

    iget v8, p0, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->$$default:I

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/material/ProgressIndicatorKt;->h(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method
