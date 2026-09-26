.class public final Landroidx/renderscript/ScriptGroup$Builder2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder2"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptGroup.Builder2"


# instance fields
.field mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field mRS:Landroidx/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mRS:Landroidx/renderscript/RenderScript;

    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    .line 20
    return-void
.end method

.method private addInvokeInternal(Landroidx/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroidx/renderscript/ScriptGroup$Closure;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroidx/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/ScriptGroup$Closure;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mRS:Landroidx/renderscript/RenderScript;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p1, p2, p3}, Landroidx/renderscript/ScriptGroup$Closure;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    return-object v0
.end method

.method private addKernelInternal(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroidx/renderscript/ScriptGroup$Closure;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/renderscript/Script$KernelID;",
            "Landroidx/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroidx/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v6, Landroidx/renderscript/ScriptGroup$Closure;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mRS:Landroidx/renderscript/RenderScript;

    .line 5
    move-object v0, v6

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/renderscript/ScriptGroup$Closure;-><init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    return-object v6
.end method

.method private seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    aget-object v2, p1, v1

    .line 8
    .line 9
    instance-of v3, v2, Landroidx/renderscript/ScriptGroup$Binding;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    goto :goto_1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    array-length p2, p1

    .line 20
    .line 21
    if-ge v1, p2, :cond_3

    .line 22
    .line 23
    aget-object p2, p1, v1

    .line 24
    .line 25
    instance-of v2, p2, Landroidx/renderscript/ScriptGroup$Binding;

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    return v0

    .line 29
    .line 30
    :cond_2
    check-cast p2, Landroidx/renderscript/ScriptGroup$Binding;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroidx/renderscript/ScriptGroup$Binding;->getField()Landroidx/renderscript/Script$FieldID;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/renderscript/ScriptGroup$Binding;->getValue()Ljava/lang/Object;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const/4 p1, 0x1

    .line 46
    return p1
.end method


# virtual methods
.method public addInput()Landroidx/renderscript/ScriptGroup$Input;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/ScriptGroup$Input;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/ScriptGroup$Input;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-object v0
.end method

.method public varargs addInvoke(Landroidx/renderscript/Script$InvokeID;[Ljava/lang/Object;)Landroidx/renderscript/ScriptGroup$Closure;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2, v0, v1}, Landroidx/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2, v1}, Landroidx/renderscript/ScriptGroup$Builder2;->addInvokeInternal(Landroidx/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroidx/renderscript/ScriptGroup$Closure;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public varargs addKernel(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Type;[Ljava/lang/Object;)Landroidx/renderscript/ScriptGroup$Closure;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3, v0, v1}, Landroidx/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    .line 14
    move-result p3

    .line 15
    .line 16
    if-nez p3, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/renderscript/ScriptGroup$Builder2;->addKernelInternal(Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroidx/renderscript/ScriptGroup$Closure;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public varargs create(Ljava/lang/String;[Landroidx/renderscript/ScriptGroup$Future;)Landroidx/renderscript/ScriptGroup;
    .locals 7

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0x64

    .line 15
    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    const-string v0, "[^a-zA-Z0-9-]"

    .line 19
    .line 20
    const-string v1, "_"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Landroidx/renderscript/ScriptGroup;

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mRS:Landroidx/renderscript/RenderScript;

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    .line 37
    .line 38
    iget-object v5, p0, Landroidx/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    .line 39
    move-object v1, v0

    .line 40
    move-object v3, p1

    .line 41
    move-object v6, p2

    .line 42
    .line 43
    .line 44
    invoke-direct/range {v1 .. v6}, Landroidx/renderscript/ScriptGroup;-><init>(Landroidx/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroidx/renderscript/ScriptGroup$Future;)V

    .line 45
    return-object v0

    .line 46
    .line 47
    :cond_0
    new-instance p1, Landroidx/renderscript/RSIllegalArgumentException;

    .line 48
    .line 49
    const-string p2, "invalid script group name"

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Landroidx/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1
.end method
