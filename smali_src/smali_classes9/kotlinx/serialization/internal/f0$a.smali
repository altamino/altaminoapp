.class final Lkotlinx/serialization/internal/f0$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/f0;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "[",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $elementsCount:I

.field final synthetic $name:Ljava/lang/String;

.field final synthetic this$0:Lkotlinx/serialization/internal/f0;


# direct methods
.method constructor <init>(ILjava/lang/String;Lkotlinx/serialization/internal/f0;)V
    .locals 0

    iput p1, p0, Lkotlinx/serialization/internal/f0$a;->$elementsCount:I

    iput-object p2, p0, Lkotlinx/serialization/internal/f0$a;->$name:Ljava/lang/String;

    iput-object p3, p0, Lkotlinx/serialization/internal/f0$a;->this$0:Lkotlinx/serialization/internal/f0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()[Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lkotlinx/serialization/internal/f0$a;->$elementsCount:I

    .line 3
    .line 4
    new-array v1, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    .line 8
    :goto_0
    if-ge v3, v0, :cond_0

    .line 9
    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    iget-object v5, p0, Lkotlinx/serialization/internal/f0$a;->$name:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const/16 v5, 0x2e

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iget-object v5, p0, Lkotlinx/serialization/internal/f0$a;->this$0:Lkotlinx/serialization/internal/f0;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->f(I)Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    .line 38
    sget-object v7, Lkotlinx/serialization/descriptors/j$d;->INSTANCE:Lkotlinx/serialization/descriptors/j$d;

    .line 39
    .line 40
    new-array v8, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 41
    const/4 v9, 0x0

    .line 42
    .line 43
    const/16 v10, 0x8

    .line 44
    const/4 v11, 0x0

    .line 45
    .line 46
    .line 47
    invoke-static/range {v6 .. v11}, Lkotlinx/serialization/descriptors/h;->d(Ljava/lang/String;Lkotlinx/serialization/descriptors/i;[Lkotlinx/serialization/descriptors/SerialDescriptor;Le8/l;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    aput-object v4, v1, v3

    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/f0$a;->b()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
