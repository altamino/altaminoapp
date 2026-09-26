.class public final Landroidx/renderscript/ScriptGroup$Closure;
.super Landroidx/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Closure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Closure"


# instance fields
.field private mArgs:[Ljava/lang/Object;

.field private mBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFP:Landroidx/renderscript/FieldPacker;

.field private mGlobalFuture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/renderscript/Script$FieldID;",
            "Landroidx/renderscript/ScriptGroup$Future;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnFuture:Landroidx/renderscript/ScriptGroup$Future;

.field private mReturnValue:Landroidx/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method constructor <init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/renderscript/RenderScript;",
            "Landroidx/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroidx/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-wide/16 v0, 0x0

    .line 21
    invoke-direct {v9, v0, v1, v10}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 22
    invoke-static/range {p3 .. p3}, Landroidx/renderscript/FieldPacker;->createFromArray([Ljava/lang/Object;)Landroidx/renderscript/FieldPacker;

    move-result-object v0

    iput-object v0, v9, Landroidx/renderscript/ScriptGroup$Closure;->mFP:Landroidx/renderscript/FieldPacker;

    move-object/from16 v0, p3

    iput-object v0, v9, Landroidx/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    move-object/from16 v0, p4

    iput-object v0, v9, Landroidx/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v9, Landroidx/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 24
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v1

    .line 25
    new-array v11, v1, [J

    .line 26
    new-array v12, v1, [J

    .line 27
    new-array v13, v1, [I

    .line 28
    new-array v14, v1, [J

    .line 29
    new-array v15, v1, [J

    .line 30
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v0, 0x0

    move/from16 v17, v0

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/renderscript/Script$FieldID;

    .line 33
    invoke-virtual {v3, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, v11, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    .line 34
    invoke-direct/range {v0 .. v8}, Landroidx/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroidx/renderscript/RenderScript;ILandroidx/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    .line 35
    invoke-virtual {v0, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v0, v9, Landroidx/renderscript/ScriptGroup$Closure;->mFP:Landroidx/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroidx/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    move-object/from16 v0, p1

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/RenderScript;->nInvokeClosureCreate(J[B[J[J[I)J

    move-result-wide v0

    .line 36
    invoke-virtual {v9, v0, v1}, Landroidx/renderscript/BaseObj;->setID(J)V

    return-void
.end method

.method constructor <init>(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Script$KernelID;Landroidx/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/renderscript/RenderScript;",
            "Landroidx/renderscript/Script$KernelID;",
            "Landroidx/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroidx/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    const-wide/16 v12, 0x0

    .line 2
    invoke-direct {v9, v12, v13, v10}, Landroidx/renderscript/BaseObj;-><init>(JLandroidx/renderscript/RenderScript;)V

    iput-object v11, v9, Landroidx/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    move-object/from16 v0, p3

    .line 3
    invoke-static {v10, v0}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;)Landroidx/renderscript/Allocation;

    move-result-object v0

    iput-object v0, v9, Landroidx/renderscript/ScriptGroup$Closure;->mReturnValue:Landroidx/renderscript/Allocation;

    move-object/from16 v14, p5

    iput-object v14, v9, Landroidx/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Landroidx/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 5
    array-length v0, v11

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    new-array v15, v0, [J

    .line 7
    new-array v8, v0, [J

    .line 8
    new-array v7, v0, [I

    .line 9
    new-array v6, v0, [J

    .line 10
    new-array v5, v0, [J

    const/4 v0, 0x0

    move v4, v0

    .line 11
    :goto_0
    array-length v0, v11

    if-ge v4, v0, :cond_0

    .line 12
    aput-wide v12, v15, v4

    const/4 v3, 0x0

    .line 13
    aget-object v16, v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move/from16 v17, v4

    move-object/from16 v4, v16

    move-object/from16 v19, v5

    move-object v5, v8

    move-object/from16 v18, v6

    move-object v6, v7

    move-object/from16 v20, v7

    move-object/from16 v7, v18

    move-object/from16 v16, v8

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Landroidx/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroidx/renderscript/RenderScript;ILandroidx/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v8, v16

    move-object/from16 v6, v18

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    goto :goto_0

    :cond_0
    move/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v16, v8

    .line 14
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/renderscript/Script$FieldID;

    .line 17
    invoke-virtual {v3, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, v15, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v5, v16

    move-object/from16 v6, v20

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    .line 18
    invoke-direct/range {v0 .. v8}, Landroidx/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroidx/renderscript/RenderScript;ILandroidx/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p2

    .line 19
    invoke-virtual {v0, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v11

    iget-object v0, v9, Landroidx/renderscript/ScriptGroup$Closure;->mReturnValue:Landroidx/renderscript/Allocation;

    invoke-virtual {v0, v10}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    move-result-wide v13

    move-object/from16 v10, p1

    move-object/from16 v17, v20

    invoke-virtual/range {v10 .. v19}, Landroidx/renderscript/RenderScript;->nClosureCreate(JJ[J[J[I[J[J)J

    move-result-wide v0

    .line 20
    invoke-virtual {v9, v0, v1}, Landroidx/renderscript/BaseObj;->setID(J)V

    return-void
.end method

.method private retrieveValueAndDependenceInfo(Landroidx/renderscript/RenderScript;ILandroidx/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 5

    .line 1
    .line 2
    instance-of v0, p4, Landroidx/renderscript/ScriptGroup$Future;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p4, Landroidx/renderscript/ScriptGroup$Future;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4}, Landroidx/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Landroidx/renderscript/ScriptGroup$Future;->getClosure()Landroidx/renderscript/ScriptGroup$Closure;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 20
    move-result-wide v3

    .line 21
    .line 22
    aput-wide v3, p7, p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4}, Landroidx/renderscript/ScriptGroup$Future;->getFieldID()Landroidx/renderscript/Script$FieldID;

    .line 26
    move-result-object p4

    .line 27
    .line 28
    if-eqz p4, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4, p1}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 32
    move-result-wide v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-wide v3, v1

    .line 35
    .line 36
    :goto_0
    aput-wide v3, p8, p2

    .line 37
    move-object p4, v0

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    aput-wide v1, p7, p2

    .line 41
    .line 42
    aput-wide v1, p8, p2

    .line 43
    .line 44
    :goto_1
    instance-of p7, p4, Landroidx/renderscript/ScriptGroup$Input;

    .line 45
    .line 46
    if-eqz p7, :cond_3

    .line 47
    .line 48
    check-cast p4, Landroidx/renderscript/ScriptGroup$Input;

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 51
    array-length p1, p1

    .line 52
    .line 53
    if-ge p2, p1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p4, p0, p2}, Landroidx/renderscript/ScriptGroup$Input;->addReference(Landroidx/renderscript/ScriptGroup$Closure;I)V

    .line 57
    goto :goto_2

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p4, p0, p3}, Landroidx/renderscript/ScriptGroup$Input;->addReference(Landroidx/renderscript/ScriptGroup$Closure;Landroidx/renderscript/Script$FieldID;)V

    .line 61
    .line 62
    :goto_2
    aput-wide v1, p5, p2

    .line 63
    const/4 p1, 0x0

    .line 64
    .line 65
    aput p1, p6, p2

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_3
    new-instance p3, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;

    .line 69
    .line 70
    .line 71
    invoke-direct {p3, p1, p4}, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroidx/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 72
    .line 73
    iget-wide p7, p3, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 74
    .line 75
    aput-wide p7, p5, p2

    .line 76
    .line 77
    iget p1, p3, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 78
    .line 79
    aput p1, p6, p2

    .line 80
    :goto_3
    return-void
.end method


# virtual methods
.method public getGlobal(Landroidx/renderscript/Script$FieldID;)Landroidx/renderscript/ScriptGroup$Future;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/renderscript/ScriptGroup$Future;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    instance-of v1, v0, Landroidx/renderscript/ScriptGroup$Future;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Landroidx/renderscript/ScriptGroup$Future;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    :cond_0
    new-instance v1, Landroidx/renderscript/ScriptGroup$Future;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0, p1, v0}, Landroidx/renderscript/ScriptGroup$Future;-><init>(Landroidx/renderscript/ScriptGroup$Closure;Landroidx/renderscript/Script$FieldID;Ljava/lang/Object;)V

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-object v0, v1

    .line 38
    :cond_1
    return-object v0
.end method

.method public getReturn()Landroidx/renderscript/ScriptGroup$Future;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroidx/renderscript/ScriptGroup$Future;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/renderscript/ScriptGroup$Future;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/renderscript/ScriptGroup$Closure;->mReturnValue:Landroidx/renderscript/Allocation;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1, v2}, Landroidx/renderscript/ScriptGroup$Future;-><init>(Landroidx/renderscript/ScriptGroup$Closure;Landroidx/renderscript/Script$FieldID;Ljava/lang/Object;)V

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroidx/renderscript/ScriptGroup$Future;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroidx/renderscript/ScriptGroup$Future;

    .line 17
    return-object v0
.end method

.method setArg(ILjava/lang/Object;)V
    .locals 9

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/renderscript/ScriptGroup$Future;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/renderscript/ScriptGroup$Future;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 13
    .line 14
    aput-object p2, v0, p1

    .line 15
    .line 16
    new-instance v0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, p2}, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroidx/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 27
    move-result-wide v3

    .line 28
    .line 29
    iget-wide v6, v0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 30
    .line 31
    iget v8, v0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 32
    move v5, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {v2 .. v8}, Landroidx/renderscript/RenderScript;->nClosureSetArg(JIJI)V

    .line 36
    return-void
.end method

.method setGlobal(Landroidx/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 10

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/renderscript/ScriptGroup$Future;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/renderscript/ScriptGroup$Future;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, p2}, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroidx/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 28
    move-result-wide v3

    .line 29
    .line 30
    iget-object p2, p0, Landroidx/renderscript/BaseObj;->mRS:Landroidx/renderscript/RenderScript;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroidx/renderscript/BaseObj;->getID(Landroidx/renderscript/RenderScript;)J

    .line 34
    move-result-wide v5

    .line 35
    .line 36
    iget-wide v7, v0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 37
    .line 38
    iget v9, v0, Landroidx/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v2 .. v9}, Landroidx/renderscript/RenderScript;->nClosureSetGlobal(JJJI)V

    .line 42
    return-void
.end method
