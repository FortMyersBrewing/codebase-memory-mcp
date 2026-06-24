// Token: 0x0200000D RID: 13
.class public auto ansi abstract beforefieldinit MaxSea.Security.LicensePolicy
	extends [mscorlib]System.Object
	implements [MaxSea.Core]MaxSea.Security.ILicensePolicy
{
	// Nested Types
	// Token: 0x02000032 RID: 50
	.class nested public auto ansi beforefieldinit ActivationOutcome
		extends [mscorlib]System.Object
	{
		.custom instance void [mscorlib]System.Reflection.ObfuscationAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		// Token: 0x040000CA RID: 202
		.field private valuetype MaxSea.Security.LicensePolicy/ActivationResult '<ActivationResult>k__BackingField'
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Token: 0x040000CB RID: 203
		.field private string '<ActivationCode>k__BackingField'
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)

		// Methods
		// Token: 0x060001CC RID: 460 RVA: 0x000097C4 File Offset: 0x000079C4
		.method public hidebysig specialname 
			instance valuetype MaxSea.Security.LicensePolicy/ActivationResult get_ActivationResult () cil managed 
		{
			.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x000079C5 02           */ IL_0000: ldarg.0
			/* 0x000079C6 7BCA000004   */ IL_0001: ldfld     valuetype MaxSea.Security.LicensePolicy/ActivationResult MaxSea.Security.LicensePolicy/ActivationOutcome::'<ActivationResult>k__BackingField'
			/* 0x000079CB 2A           */ IL_0006: ret
		} // end of method ActivationOutcome::get_ActivationResult

		// Token: 0x060001CD RID: 461 RVA: 0x000097CC File Offset: 0x000079CC
		.method public hidebysig specialname 
			instance void set_ActivationResult (
				valuetype MaxSea.Security.LicensePolicy/ActivationResult 'value'
			) cil managed 
		{
			.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Header Size: 1 byte
			// Code Size: 8 (0x8) bytes
			.maxstack 8

			/* 0x000079CD 02           */ IL_0000: ldarg.0
			/* 0x000079CE 03           */ IL_0001: ldarg.1
			/* 0x000079CF 7DCA000004   */ IL_0002: stfld     valuetype MaxSea.Security.LicensePolicy/ActivationResult MaxSea.Security.LicensePolicy/ActivationOutcome::'<ActivationResult>k__BackingField'
			/* 0x000079D4 2A           */ IL_0007: ret
		} // end of method ActivationOutcome::set_ActivationResult

		// Token: 0x060001CE RID: 462 RVA: 0x000097D5 File Offset: 0x000079D5
		.method public hidebysig specialname 
			instance string get_ActivationCode () cil managed 
		{
			.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x000079D6 02           */ IL_0000: ldarg.0
			/* 0x000079D7 7BCB000004   */ IL_0001: ldfld     string MaxSea.Security.LicensePolicy/ActivationOutcome::'<ActivationCode>k__BackingField'
			/* 0x000079DC 2A           */ IL_0006: ret
		} // end of method ActivationOutcome::get_ActivationCode

		// Token: 0x060001CF RID: 463 RVA: 0x000097DD File Offset: 0x000079DD
		.method public hidebysig specialname 
			instance void set_ActivationCode (
				string 'value'
			) cil managed 
		{
			.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Header Size: 1 byte
			// Code Size: 8 (0x8) bytes
			.maxstack 8

			/* 0x000079DE 02           */ IL_0000: ldarg.0
			/* 0x000079DF 03           */ IL_0001: ldarg.1
			/* 0x000079E0 7DCB000004   */ IL_0002: stfld     string MaxSea.Security.LicensePolicy/ActivationOutcome::'<ActivationCode>k__BackingField'
			/* 0x000079E5 2A           */ IL_0007: ret
		} // end of method ActivationOutcome::set_ActivationCode

		// Token: 0x060001D0 RID: 464 RVA: 0x000097E6 File Offset: 0x000079E6
		.method public hidebysig specialname rtspecialname 
			instance void .ctor () cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x000079E7 02           */ IL_0000: ldarg.0
			/* 0x000079E8 282800000A   */ IL_0001: call      instance void [mscorlib]System.Object::.ctor()
			/* 0x000079ED 2A           */ IL_0006: ret
		} // end of method ActivationOutcome::.ctor

		// Properties
		// Token: 0x1700005D RID: 93
		.property instance valuetype MaxSea.Security.LicensePolicy/ActivationResult ActivationResult()
		{
			// Token: 0x060001CC RID: 460 RVA: 0x000097C4 File Offset: 0x000079C4
			.get instance valuetype MaxSea.Security.LicensePolicy/ActivationResult MaxSea.Security.LicensePolicy/ActivationOutcome::get_ActivationResult()
			// Token: 0x060001CD RID: 461 RVA: 0x000097CC File Offset: 0x000079CC
			.set instance void MaxSea.Security.LicensePolicy/ActivationOutcome::set_ActivationResult(valuetype MaxSea.Security.LicensePolicy/ActivationResult)
		}
		// Token: 0x1700005E RID: 94
		.property instance string ActivationCode()
		{
			// Token: 0x060001CE RID: 462 RVA: 0x000097D5 File Offset: 0x000079D5
			.get instance string MaxSea.Security.LicensePolicy/ActivationOutcome::get_ActivationCode()
			// Token: 0x060001CF RID: 463 RVA: 0x000097DD File Offset: 0x000079DD
			.set instance void MaxSea.Security.LicensePolicy/ActivationOutcome::set_ActivationCode(string)
		}

	} // end of class ActivationOutcome

	// Token: 0x02000033 RID: 51
	.class nested public auto ansi sealed ActivationResult
		extends [mscorlib]System.Enum
	{
		// Fields
		// Token: 0x040000CC RID: 204
		.field public specialname rtspecialname int32 value__
		// Token: 0x040000CD RID: 205
		.field public static literal valuetype MaxSea.Security.LicensePolicy/ActivationResult IncorrectParameters = int32(-1)
		// Token: 0x040000CE RID: 206
		.field public static literal valuetype MaxSea.Security.LicensePolicy/ActivationResult Success = int32(0)
		// Token: 0x040000CF RID: 207
		.field public static literal valuetype MaxSea.Security.LicensePolicy/ActivationResult SiteCodeBadFormat = int32(1)
		// Token: 0x040000D0 RID: 208
		.field public static literal valuetype MaxSea.Security.LicensePolicy/ActivationResult LicenseInvalidStatus = int32(2)
		// Token: 0x040000D1 RID: 209
		.field public static literal valuetype MaxSea.Security.LicensePolicy/ActivationResult LicenseHasOlderSoftware = int32(-10003)
		// Token: 0x040000D2 RID: 210
		.field public static literal valuetype MaxSea.Security.LicensePolicy/ActivationResult AlreadyRemoved = int32(-10005)
		// Token: 0x040000D3 RID: 211
		.field public static literal valuetype MaxSea.Security.LicensePolicy/ActivationResult NoTokenAvailable = int32(-10006)
		// Token: 0x040000D4 RID: 212
		.field public static literal valuetype MaxSea.Security.LicensePolicy/ActivationResult BadProduct = int32(-10061)

	} // end of class ActivationResult

	// Token: 0x02000034 RID: 52
	.class nested private auto ansi sealed serializable beforefieldinit '<>c__46`1'<([MaxSea.Core]MaxSea.Security.ILicensePolicy) T>
		extends [mscorlib]System.Object
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		// Token: 0x040000D5 RID: 213
		.field public static initonly class MaxSea.Security.LicensePolicy/'<>c__46`1'<!T> '<>9'
		// Token: 0x040000D6 RID: 214
		.field public static class [mscorlib]System.Func`1<class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy> '<>9__46_0'

		// Methods
		// Token: 0x060001D1 RID: 465 RVA: 0x000097EE File Offset: 0x000079EE
		.method private hidebysig specialname rtspecialname static 
			void .cctor () cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 11 (0xB) bytes
			.maxstack 8

			/* 0x000079EF 738502000A   */ IL_0000: newobj    instance void class MaxSea.Security.LicensePolicy/'<>c__46`1'<!T>::.ctor()
			/* 0x000079F4 808602000A   */ IL_0005: stsfld    class MaxSea.Security.LicensePolicy/'<>c__46`1'<!0> class MaxSea.Security.LicensePolicy/'<>c__46`1'<!T>::'<>9'
			/* 0x000079F9 2A           */ IL_000A: ret
		} // end of method '<>c__46`1'::.cctor

		// Token: 0x060001D2 RID: 466 RVA: 0x000097FA File Offset: 0x000079FA
		.method public hidebysig specialname rtspecialname 
			instance void .ctor () cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x000079FB 02           */ IL_0000: ldarg.0
			/* 0x000079FC 282800000A   */ IL_0001: call      instance void [mscorlib]System.Object::.ctor()
			/* 0x00007A01 2A           */ IL_0006: ret
		} // end of method '<>c__46`1'::.ctor

		// Token: 0x060001D3 RID: 467 RVA: 0x00009802 File Offset: 0x00007A02
		.method assembly hidebysig 
			instance class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy '<MountLicensePolicy>b__46_0' () cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 11 (0xB) bytes
			.maxstack 8

			/* 0x00007A03 72FF210070   */ IL_0000: ldstr     "TZ"
			/* 0x00007A08 7387000006   */ IL_0005: newobj    instance void MaxSea.Security.PublicIdentityPolicyTimeZero::.ctor(string)
			/* 0x00007A0D 2A           */ IL_000A: ret
		} // end of method '<>c__46`1'::'<MountLicensePolicy>b__46_0'

	} // end of class <>c__46`1

	// Token: 0x02000035 RID: 53
	.class nested private auto ansi sealed beforefieldinit '<>c__DisplayClass46_0`1'<([MaxSea.Core]MaxSea.Security.ILicensePolicy) T>
		extends [mscorlib]System.Object
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		// Token: 0x040000D7 RID: 215
		.field public string unlockCodePoolPath

		// Methods
		// Token: 0x060001D4 RID: 468 RVA: 0x0000980E File Offset: 0x00007A0E
		.method public hidebysig specialname rtspecialname 
			instance void .ctor () cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x00007A0F 02           */ IL_0000: ldarg.0
			/* 0x00007A10 282800000A   */ IL_0001: call      instance void [mscorlib]System.Object::.ctor()
			/* 0x00007A15 2A           */ IL_0006: ret
		} // end of method '<>c__DisplayClass46_0`1'::.ctor

		// Token: 0x060001D5 RID: 469 RVA: 0x00009816 File Offset: 0x00007A16
		.method assembly hidebysig 
			instance class [MaxSea.Core]MaxSea.Security.IUnlockCodesPool '<MountLicensePolicy>b__1' () cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 12 (0xC) bytes
			.maxstack 8

			/* 0x00007A17 02           */ IL_0000: ldarg.0
			/* 0x00007A18 7B8702000A   */ IL_0001: ldfld     string class MaxSea.Security.LicensePolicy/'<>c__DisplayClass46_0`1'<!T>::unlockCodePoolPath
			/* 0x00007A1D 738802000A   */ IL_0006: newobj    instance void [MaxSea.ChartsServer]MaxSea.Security.UnlockCodesPool::.ctor(string)
			/* 0x00007A22 2A           */ IL_000B: ret
		} // end of method '<>c__DisplayClass46_0`1'::'<MountLicensePolicy>b__1'

	} // end of class <>c__DisplayClass46_0`1

	// Token: 0x02000036 RID: 54
	.class nested private auto ansi sealed beforefieldinit '<>c__DisplayClass51_0'
		extends [mscorlib]System.Object
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Nested Types
		// Token: 0x0200005C RID: 92
		.class nested private auto ansi sealed beforefieldinit '<<CheckActivationAfterBoot>b__0>d'
			extends [mscorlib]System.ValueType
			implements [mscorlib]System.Runtime.CompilerServices.IAsyncStateMachine
		{
			// Fields
			// Token: 0x0400015E RID: 350
			.field public int32 '<>1__state'
			// Token: 0x0400015F RID: 351
			.field public valuetype [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
			// Token: 0x04000160 RID: 352
			.field public class MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0' '<>4__this'
			// Token: 0x04000161 RID: 353
			.field private valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter '<>u__1'

			// Methods
			// Token: 0x06000258 RID: 600 RVA: 0x0000C544 File Offset: 0x0000A744
			.method private final hidebysig newslot virtual 
				instance void MoveNext () cil managed 
			{
				.override method instance void [mscorlib]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext()
				// Header Size: 12 bytes
				// Code Size: 368 (0x170) bytes
				// LocalVarSig Token: 0x1100008F RID: 143
				.maxstack 3
				.locals init (
					[0] int32,
					[1] class MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0',
					[2] valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter,
					[3] class MaxSea.Security.LicensePolicy/ActivationOutcome,
					[4] string,
					[5] string,
					[6] class [mscorlib]System.Exception
				)

				/* 0x0000A750 02           */ IL_0000: ldarg.0
				/* 0x0000A751 7B5E010004   */ IL_0001: ldfld     int32 MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>1__state'
				/* 0x0000A756 0A           */ IL_0006: stloc.0
				/* 0x0000A757 02           */ IL_0007: ldarg.0
				/* 0x0000A758 7B60010004   */ IL_0008: ldfld     class MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0' MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>4__this'
				/* 0x0000A75D 0B           */ IL_000D: stloc.1
				.try
				{
					/* 0x0000A75E 06           */ IL_000E: ldloc.0
					/* 0x0000A75F 2C51         */ IL_000F: brfalse.s IL_0062

					/* 0x0000A761 3820010000   */ IL_0011: br        IL_0136

					/* 0x0000A766 1F78         */ IL_0016: ldc.i4.s  120
					/* 0x0000A768 732F03000A   */ IL_0018: newobj    instance void [mscorlib]System.Random::.ctor()
					/* 0x0000A76D 1F78         */ IL_001D: ldc.i4.s  120
					/* 0x0000A76F 6F3003000A   */ IL_001F: callvirt  instance int32 [mscorlib]System.Random::Next(int32)
					/* 0x0000A774 58           */ IL_0024: add
					/* 0x0000A775 20E8030000   */ IL_0025: ldc.i4    1000
					/* 0x0000A77A 5A           */ IL_002A: mul
					/* 0x0000A77B 283103000A   */ IL_002B: call      class [mscorlib]System.Threading.Tasks.Task [mscorlib]System.Threading.Tasks.Task::Delay(int32)
					/* 0x0000A780 6FD602000A   */ IL_0030: callvirt  instance valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter [mscorlib]System.Threading.Tasks.Task::GetAwaiter()
					/* 0x0000A785 0C           */ IL_0035: stloc.2
					/* 0x0000A786 1202         */ IL_0036: ldloca.s  V_2
					/* 0x0000A788 28D702000A   */ IL_0038: call      instance bool [mscorlib]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
					/* 0x0000A78D 2D3F         */ IL_003D: brtrue.s  IL_007E

					/* 0x0000A78F 02           */ IL_003F: ldarg.0
					/* 0x0000A790 16           */ IL_0040: ldc.i4.0
					/* 0x0000A791 25           */ IL_0041: dup
					/* 0x0000A792 0A           */ IL_0042: stloc.0
					/* 0x0000A793 7D5E010004   */ IL_0043: stfld     int32 MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>1__state'
					/* 0x0000A798 02           */ IL_0048: ldarg.0
					/* 0x0000A799 08           */ IL_0049: ldloc.2
					/* 0x0000A79A 7D61010004   */ IL_004A: stfld     valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>u__1'
					/* 0x0000A79F 02           */ IL_004F: ldarg.0
					/* 0x0000A7A0 7C5F010004   */ IL_0050: ldflda    valuetype [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>t__builder'
					/* 0x0000A7A5 1202         */ IL_0055: ldloca.s  V_2
					/* 0x0000A7A7 02           */ IL_0057: ldarg.0
					/* 0x0000A7A8 286A00002B   */ IL_0058: call      instance void [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter, valuetype MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'>(!!0&, !!1&)
					/* 0x0000A7AD DD0D010000   */ IL_005D: leave     IL_016F

					/* 0x0000A7B2 02           */ IL_0062: ldarg.0
					/* 0x0000A7B3 7B61010004   */ IL_0063: ldfld     valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>u__1'
					/* 0x0000A7B8 0C           */ IL_0068: stloc.2
					/* 0x0000A7B9 02           */ IL_0069: ldarg.0
					/* 0x0000A7BA 7C61010004   */ IL_006A: ldflda    valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>u__1'
					/* 0x0000A7BF FE1562000001 */ IL_006F: initobj   [mscorlib]System.Runtime.CompilerServices.TaskAwaiter
					/* 0x0000A7C5 02           */ IL_0075: ldarg.0
					/* 0x0000A7C6 15           */ IL_0076: ldc.i4.m1
					/* 0x0000A7C7 25           */ IL_0077: dup
					/* 0x0000A7C8 0A           */ IL_0078: stloc.0
					/* 0x0000A7C9 7D5E010004   */ IL_0079: stfld     int32 MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>1__state'

					/* 0x0000A7CE 1202         */ IL_007E: ldloca.s  V_2
					/* 0x0000A7D0 28D802000A   */ IL_0080: call      instance void [mscorlib]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
					/* 0x0000A7D5 287102000A   */ IL_0085: call      class [MaxSea.Core]MaxSea.Core.Web.WebService [MaxSea.Core]MaxSea.Core.Web.WebService::get_Instance()
					/* 0x0000A7DA 6F7202000A   */ IL_008A: callvirt  instance valuetype [MaxSea.Core]MaxSea.Core.Web.ConnectivityStatus [MaxSea.Core]MaxSea.Core.Web.WebService::get_LastInternetConnectivityStatus()
					/* 0x0000A7DF 18           */ IL_008F: ldc.i4.2
					/* 0x0000A7E0 40A1000000   */ IL_0090: bne.un    IL_0136

					/* 0x0000A7E5 07           */ IL_0095: ldloc.1
					/* 0x0000A7E6 7BD8000004   */ IL_0096: ldfld     class MaxSea.Security.LicensePolicy MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'::'<>4__this'
					/* 0x0000A7EB 2873000006   */ IL_009B: call      instance class MaxSea.Security.LicensePolicy/ActivationOutcome MaxSea.Security.LicensePolicy::CheckActivationOnline()
					/* 0x0000A7F0 0D           */ IL_00A0: stloc.3
					/* 0x0000A7F1 09           */ IL_00A1: ldloc.3
					/* 0x0000A7F2 398F000000   */ IL_00A2: brfalse   IL_0136

					/* 0x0000A7F7 09           */ IL_00A7: ldloc.3
					/* 0x0000A7F8 6FCC010006   */ IL_00A8: callvirt  instance valuetype MaxSea.Security.LicensePolicy/ActivationResult MaxSea.Security.LicensePolicy/ActivationOutcome::get_ActivationResult()
					/* 0x0000A7FD 20EBD8FFFF   */ IL_00AD: ldc.i4    -10005
					/* 0x0000A802 333A         */ IL_00B2: bne.un.s  IL_00EE

					/* 0x0000A804 72FC090070   */ IL_00B4: ldstr     "License "
					/* 0x0000A809 07           */ IL_00B9: ldloc.1
					/* 0x0000A80A 7BD8000004   */ IL_00BA: ldfld     class MaxSea.Security.LicensePolicy MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'::'<>4__this'
					/* 0x0000A80F 7B25000004   */ IL_00BF: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
					/* 0x0000A814 6F8800000A   */ IL_00C4: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
					/* 0x0000A819 727A040070   */ IL_00C9: ldstr     "N"
					/* 0x0000A81E 6F8900000A   */ IL_00CE: callvirt  instance string [MaxSea.Core]MaxSea.Security.PublicIdentity::ToString(string)
					/* 0x0000A823 720E0A0070   */ IL_00D3: ldstr     " automatically removed due to an activation already removed."
					/* 0x0000A828 283B00000A   */ IL_00D8: call      string [mscorlib]System.String::Concat(string, string, string)
					/* 0x0000A82D 1304         */ IL_00DD: stloc.s   V_4
					/* 0x0000A82F 07           */ IL_00DF: ldloc.1
					/* 0x0000A830 7BD8000004   */ IL_00E0: ldfld     class MaxSea.Security.LicensePolicy MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'::'<>4__this'
					/* 0x0000A835 1104         */ IL_00E5: ldloc.s   V_4
					/* 0x0000A837 2870000006   */ IL_00E7: call      instance void MaxSea.Security.LicensePolicy::ClearInvalidLicenseAndExit(string)
					/* 0x0000A83C 2B41         */ IL_00EC: br.s      IL_012F

					/* 0x0000A83E 09           */ IL_00EE: ldloc.3
					/* 0x0000A83F 6FCC010006   */ IL_00EF: callvirt  instance valuetype MaxSea.Security.LicensePolicy/ActivationResult MaxSea.Security.LicensePolicy/ActivationOutcome::get_ActivationResult()
					/* 0x0000A844 18           */ IL_00F4: ldc.i4.2
					/* 0x0000A845 3338         */ IL_00F5: bne.un.s  IL_012F

					/* 0x0000A847 72FC090070   */ IL_00F7: ldstr     "License "
					/* 0x0000A84C 07           */ IL_00FC: ldloc.1
					/* 0x0000A84D 7BD8000004   */ IL_00FD: ldfld     class MaxSea.Security.LicensePolicy MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'::'<>4__this'
					/* 0x0000A852 7B25000004   */ IL_0102: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
					/* 0x0000A857 6F8800000A   */ IL_0107: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
					/* 0x0000A85C 727A040070   */ IL_010C: ldstr     "N"
					/* 0x0000A861 6F8900000A   */ IL_0111: callvirt  instance string [MaxSea.Core]MaxSea.Security.PublicIdentity::ToString(string)
					/* 0x0000A866 726C0B0070   */ IL_0116: ldstr     " automatically removed due to incorrect license status"
					/* 0x0000A86B 283B00000A   */ IL_011B: call      string [mscorlib]System.String::Concat(string, string, string)
					/* 0x0000A870 1305         */ IL_0120: stloc.s   V_5
					/* 0x0000A872 07           */ IL_0122: ldloc.1
					/* 0x0000A873 7BD8000004   */ IL_0123: ldfld     class MaxSea.Security.LicensePolicy MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'::'<>4__this'
					/* 0x0000A878 1105         */ IL_0128: ldloc.s   V_5
					/* 0x0000A87A 2870000006   */ IL_012A: call      instance void MaxSea.Security.LicensePolicy::ClearInvalidLicenseAndExit(string)

					/* 0x0000A87F 07           */ IL_012F: ldloc.1
					/* 0x0000A880 17           */ IL_0130: ldc.i4.1
					/* 0x0000A881 7DD9000004   */ IL_0131: stfld     bool MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'::activationWasTestedOnline

					/* 0x0000A886 07           */ IL_0136: ldloc.1
					/* 0x0000A887 7BD9000004   */ IL_0137: ldfld     bool MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'::activationWasTestedOnline
					/* 0x0000A88C 39D5FEFFFF   */ IL_013C: brfalse   IL_0016

					/* 0x0000A891 DE19         */ IL_0141: leave.s   IL_015C
				} // end .try
				catch [mscorlib]System.Exception
				{
					/* 0x0000A893 1306         */ IL_0143: stloc.s   V_6
					/* 0x0000A895 02           */ IL_0145: ldarg.0
					/* 0x0000A896 1FFE         */ IL_0146: ldc.i4.s  -2
					/* 0x0000A898 7D5E010004   */ IL_0148: stfld     int32 MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>1__state'
					/* 0x0000A89D 02           */ IL_014D: ldarg.0
					/* 0x0000A89E 7C5F010004   */ IL_014E: ldflda    valuetype [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>t__builder'
					/* 0x0000A8A3 1106         */ IL_0153: ldloc.s   V_6
					/* 0x0000A8A5 288102000A   */ IL_0155: call      instance void [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [mscorlib]System.Exception)
					/* 0x0000A8AA DE13         */ IL_015A: leave.s   IL_016F
				} // end handler

				/* 0x0000A8AC 02           */ IL_015C: ldarg.0
				/* 0x0000A8AD 1FFE         */ IL_015D: ldc.i4.s  -2
				/* 0x0000A8AF 7D5E010004   */ IL_015F: stfld     int32 MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>1__state'
				/* 0x0000A8B4 02           */ IL_0164: ldarg.0
				/* 0x0000A8B5 7C5F010004   */ IL_0165: ldflda    valuetype [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>t__builder'
				/* 0x0000A8BA 288202000A   */ IL_016A: call      instance void [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()

				/* 0x0000A8BF 2A           */ IL_016F: ret
			} // end of method '<<CheckActivationAfterBoot>b__0>d'::MoveNext

			// Token: 0x06000259 RID: 601 RVA: 0x0000C6DC File Offset: 0x0000A8DC
			.method private final hidebysig newslot virtual 
				instance void SetStateMachine (
					class [mscorlib]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine
				) cil managed 
			{
				.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
					01 00 00 00
				)
				.override method instance void [mscorlib]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine(class [mscorlib]System.Runtime.CompilerServices.IAsyncStateMachine)
				// Header Size: 1 byte
				// Code Size: 13 (0xD) bytes
				.maxstack 8

				/* 0x0000A8DD 02           */ IL_0000: ldarg.0
				/* 0x0000A8DE 7C5F010004   */ IL_0001: ldflda    valuetype [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>t__builder'
				/* 0x0000A8E3 03           */ IL_0006: ldarg.1
				/* 0x0000A8E4 288302000A   */ IL_0007: call      instance void [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetStateMachine(class [mscorlib]System.Runtime.CompilerServices.IAsyncStateMachine)
				/* 0x0000A8E9 2A           */ IL_000C: ret
			} // end of method '<<CheckActivationAfterBoot>b__0>d'::SetStateMachine

		} // end of class <<CheckActivationAfterBoot>b__0>d


		// Fields
		// Token: 0x040000D8 RID: 216
		.field public class MaxSea.Security.LicensePolicy '<>4__this'
		// Token: 0x040000D9 RID: 217
		.field public bool activationWasTestedOnline

		// Methods
		// Token: 0x060001D6 RID: 470 RVA: 0x00009823 File Offset: 0x00007A23
		.method public hidebysig specialname rtspecialname 
			instance void .ctor () cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x00007A24 02           */ IL_0000: ldarg.0
			/* 0x00007A25 282800000A   */ IL_0001: call      instance void [mscorlib]System.Object::.ctor()
			/* 0x00007A2A 2A           */ IL_0006: ret
		} // end of method '<>c__DisplayClass51_0'::.ctor

		// Token: 0x060001D7 RID: 471 RVA: 0x0000982C File Offset: 0x00007A2C
		.method assembly hidebysig 
			instance class [mscorlib]System.Threading.Tasks.Task '<CheckActivationAfterBoot>b__0' () cil managed 
		{
			.custom instance void [mscorlib]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [mscorlib]System.Type) = (
				01 00 55 4d 61 78 53 65 61 2e 53 65 63 75 72 69
				74 79 2e 4c 69 63 65 6e 73 65 50 6f 6c 69 63 79
				2b 3c 3e 63 5f 5f 44 69 73 70 6c 61 79 43 6c 61
				73 73 35 31 5f 30 2b 3c 3c 43 68 65 63 6b 41 63
				74 69 76 61 74 69 6f 6e 41 66 74 65 72 42 6f 6f
				74 3e 62 5f 5f 30 3e 64 00 00
			)
			// Header Size: 12 bytes
			// Code Size: 55 (0x37) bytes
			// LocalVarSig Token: 0x11000072 RID: 114
			.maxstack 2
			.locals init (
				[0] valuetype MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'
			)

			/* 0x00007A38 1200         */ IL_0000: ldloca.s  V_0
			/* 0x00007A3A 28DC00000A   */ IL_0002: call      valuetype [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
			/* 0x00007A3F 7D5F010004   */ IL_0007: stfld     valuetype [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>t__builder'
			/* 0x00007A44 1200         */ IL_000C: ldloca.s  V_0
			/* 0x00007A46 02           */ IL_000E: ldarg.0
			/* 0x00007A47 7D60010004   */ IL_000F: stfld     class MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0' MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>4__this'
			/* 0x00007A4C 1200         */ IL_0014: ldloca.s  V_0
			/* 0x00007A4E 15           */ IL_0016: ldc.i4.m1
			/* 0x00007A4F 7D5E010004   */ IL_0017: stfld     int32 MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>1__state'
			/* 0x00007A54 1200         */ IL_001C: ldloca.s  V_0
			/* 0x00007A56 7C5F010004   */ IL_001E: ldflda    valuetype [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>t__builder'
			/* 0x00007A5B 1200         */ IL_0023: ldloca.s  V_0
			/* 0x00007A5D 284B00002B   */ IL_0025: call      instance void [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<valuetype MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'>(!!0&)
			/* 0x00007A62 1200         */ IL_002A: ldloca.s  V_0
			/* 0x00007A64 7C5F010004   */ IL_002C: ldflda    valuetype [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'/'<<CheckActivationAfterBoot>b__0>d'::'<>t__builder'
			/* 0x00007A69 28DE00000A   */ IL_0031: call      instance class [mscorlib]System.Threading.Tasks.Task [mscorlib]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
			/* 0x00007A6E 2A           */ IL_0036: ret
		} // end of method '<>c__DisplayClass51_0'::'<CheckActivationAfterBoot>b__0'

	} // end of class <>c__DisplayClass51_0

	// Token: 0x02000037 RID: 55
	.class nested private auto ansi sealed beforefieldinit '<>c__DisplayClass64_0'
		extends [mscorlib]System.Object
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		// Token: 0x040000DA RID: 218
		.field public class [System]System.Uri activationUrl
		// Token: 0x040000DB RID: 219
		.field public class MaxSea.Security.LicensePolicy '<>4__this'
		// Token: 0x040000DC RID: 220
		.field public string siteCode
		// Token: 0x040000DD RID: 221
		.field public string mode
		// Token: 0x040000DE RID: 222
		.field public string computerInformation

		// Methods
		// Token: 0x060001D8 RID: 472 RVA: 0x0000986F File Offset: 0x00007A6F
		.method public hidebysig specialname rtspecialname 
			instance void .ctor () cil managed 
		{
			// Header Size: 1 byte
			// Code Size: 7 (0x7) bytes
			.maxstack 8

			/* 0x00007A70 02           */ IL_0000: ldarg.0
			/* 0x00007A71 282800000A   */ IL_0001: call      instance void [mscorlib]System.Object::.ctor()
			/* 0x00007A76 2A           */ IL_0006: ret
		} // end of method '<>c__DisplayClass64_0'::.ctor

		// Token: 0x060001D9 RID: 473 RVA: 0x00009878 File Offset: 0x00007A78
		.method assembly hidebysig 
			instance class [mscorlib]System.Threading.Tasks.Task`1<class MaxSea.Security.LicensePolicy/ActivationOutcome> '<CheckActivationOnline>b__0' () cil managed 
		{
			// Header Size: 12 bytes
			// Code Size: 90 (0x5A) bytes
			.maxstack 6

			/* 0x00007A84 02           */ IL_0000: ldarg.0
			/* 0x00007A85 7BDA000004   */ IL_0001: ldfld     class [System]System.Uri MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::activationUrl
			/* 0x00007A8A 288902000A   */ IL_0006: call      class [MaxSea.Core]MaxSea.Core.Web.IHttpGetBuilder [MaxSea.Core]MaxSea.Core.Web.FluentApi::HttpGet(class [System]System.Uri)
			/* 0x00007A8F 1A           */ IL_000B: ldc.i4.4
			/* 0x00007A90 8DBE000001   */ IL_000C: newarr    [mscorlib]System.String
			/* 0x00007A95 25           */ IL_0011: dup
			/* 0x00007A96 16           */ IL_0012: ldc.i4.0
			/* 0x00007A97 02           */ IL_0013: ldarg.0
			/* 0x00007A98 7BDB000004   */ IL_0014: ldfld     class MaxSea.Security.LicensePolicy MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::'<>4__this'
			/* 0x00007A9D 7B25000004   */ IL_0019: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
			/* 0x00007AA2 6F8800000A   */ IL_001E: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
			/* 0x00007AA7 727A040070   */ IL_0023: ldstr     "N"
			/* 0x00007AAC 6F8900000A   */ IL_0028: callvirt  instance string [MaxSea.Core]MaxSea.Security.PublicIdentity::ToString(string)
			/* 0x00007AB1 A2           */ IL_002D: stelem.ref
			/* 0x00007AB2 25           */ IL_002E: dup
			/* 0x00007AB3 17           */ IL_002F: ldc.i4.1
			/* 0x00007AB4 02           */ IL_0030: ldarg.0
			/* 0x00007AB5 7BDC000004   */ IL_0031: ldfld     string MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::siteCode
			/* 0x00007ABA A2           */ IL_0036: stelem.ref
			/* 0x00007ABB 25           */ IL_0037: dup
			/* 0x00007ABC 18           */ IL_0038: ldc.i4.2
			/* 0x00007ABD 02           */ IL_0039: ldarg.0
			/* 0x00007ABE 7BDD000004   */ IL_003A: ldfld     string MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::mode
			/* 0x00007AC3 A2           */ IL_003F: stelem.ref
			/* 0x00007AC4 25           */ IL_0040: dup
			/* 0x00007AC5 19           */ IL_0041: ldc.i4.3
			/* 0x00007AC6 02           */ IL_0042: ldarg.0
			/* 0x00007AC7 7BDE000004   */ IL_0043: ldfld     string MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::computerInformation
			/* 0x00007ACC A2           */ IL_0048: stelem.ref
			/* 0x00007ACD 6F8A02000A   */ IL_0049: callvirt  instance !0 class [MaxSea.Core]MaxSea.Core.Web.IUrlBuilder`1<class [MaxSea.Core]MaxSea.Core.Web.IHttpGetBuilder>::AppendPath(string[])
			/* 0x00007AD2 6F8B02000A   */ IL_004E: callvirt  instance !0 class [MaxSea.Core]MaxSea.Core.Web.IHttpRequestBuilder`1<class [MaxSea.Core]MaxSea.Core.Web.IHttpGetBuilder>::ByPassGlobalInternetRestriction()
			/* 0x00007AD7 14           */ IL_0053: ldnull
			/* 0x00007AD8 6F4C00002B   */ IL_0054: callvirt  instance class [mscorlib]System.Threading.Tasks.Task`1<!!0> [MaxSea.Core]MaxSea.Core.Web.IHttpResponseContentReader::ReadDataWithJsonSerializer<class MaxSea.Security.LicensePolicy/ActivationOutcome>(class [Newtonsoft.Json]Newtonsoft.Json.JsonSerializerSettings)
			/* 0x00007ADD 2A           */ IL_0059: ret
		} // end of method '<>c__DisplayClass64_0'::'<CheckActivationOnline>b__0'

	} // end of class <>c__DisplayClass64_0


	// Fields
	// Token: 0x04000025 RID: 37
	.field private class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy _PublicIdentityPolicy
	// Token: 0x04000026 RID: 38
	.field private class [MaxSea.IOC]MaxSea.IOC.WorkItem _RootWorkItem
	// Token: 0x04000027 RID: 39
	.field private class [MaxSea.Core]MaxSea.Security.IUnlockCodesPool _UnlockCodesPool
	// Token: 0x04000028 RID: 40
	.field private class [MaxSea.Core]MaxSea.Core.Threading.IIdleService _IdleService
	// Token: 0x04000029 RID: 41
	.field private class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm _SerialInputForm
	// Token: 0x0400002A RID: 42
	.field private int32 _ErrorCode
	// Token: 0x0400002B RID: 43
	.field private initonly class MaxSea.Security.SECSystem _SecSystem
	// Token: 0x0400002C RID: 44
	.field private valuetype MaxSea.Security.LicenseStatus _LicenseStatus
	// Token: 0x0400002D RID: 45
	.field private initonly uint8 '<CommercialVersion>k__BackingField'
	.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	// Token: 0x0400002E RID: 46
	.field private bool '<IsValid>k__BackingField'
	.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	// Token: 0x0400002F RID: 47
	.field private bool '<CanAcquire>k__BackingField'
	.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000030 RID: 48
	.field private bool '<CanMove>k__BackingField'
	.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000031 RID: 49
	.field private bool '<CanRemove>k__BackingField'
	.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000032 RID: 50
	.field private bool '<CanDestroy>k__BackingField'
	.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000033 RID: 51
	.field private valuetype [MaxSea.Core]MaxSea.Security.LimitationType '<Limitation>k__BackingField'
	.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	// Token: 0x04000034 RID: 52
	.field private bool '<HasBeenManuallyActivated>k__BackingField'
	.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)

	// Methods
	// Token: 0x0600004E RID: 78 RVA: 0x00003DA3 File Offset: 0x00001FA3
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			uint8 commercialVersion,
			class MaxSea.Security.LicenseParameters licenseParameters
		) cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 38 (0x26) bytes
		.maxstack 8

		/* 0x00001FA4 02           */ IL_0000: ldarg.0
		/* 0x00001FA5 282800000A   */ IL_0001: call      instance void [mscorlib]System.Object::.ctor()
		/* 0x00001FAA 02           */ IL_0006: ldarg.0
		/* 0x00001FAB 03           */ IL_0007: ldarg.1
		/* 0x00001FAC 7D2D000004   */ IL_0008: stfld     uint8 MaxSea.Security.LicensePolicy::'<CommercialVersion>k__BackingField'
		/* 0x00001FB1 02           */ IL_000D: ldarg.0
		/* 0x00001FB2 04           */ IL_000E: ldarg.2
		/* 0x00001FB3 6F4B000006   */ IL_000F: callvirt  instance string MaxSea.Security.LicenseParameters::get_BlowfisherKey()
		/* 0x00001FB8 03           */ IL_0014: ldarg.1
		/* 0x00001FB9 73E5000006   */ IL_0015: newobj    instance void MaxSea.Security.SECSystem::.ctor(string, uint8)
		/* 0x00001FBE 7D2B000004   */ IL_001A: stfld     class MaxSea.Security.SECSystem MaxSea.Security.LicensePolicy::_SecSystem
		/* 0x00001FC3 02           */ IL_001F: ldarg.0
		/* 0x00001FC4 286D000006   */ IL_0020: call      instance void MaxSea.Security.LicensePolicy::ResetStatus()
		/* 0x00001FC9 2A           */ IL_0025: ret
	} // end of method LicensePolicy::.ctor

	// Token: 0x0600004F RID: 79 RVA: 0x00003DCA File Offset: 0x00001FCA
	.method public hidebysig specialname 
		instance uint8 get_CommercialVersion () cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 7 (0x7) bytes
		.maxstack 8

		/* 0x00001FCB 02           */ IL_0000: ldarg.0
		/* 0x00001FCC 7B2D000004   */ IL_0001: ldfld     uint8 MaxSea.Security.LicensePolicy::'<CommercialVersion>k__BackingField'
		/* 0x00001FD1 2A           */ IL_0006: ret
	} // end of method LicensePolicy::get_CommercialVersion

	// Token: 0x06000050 RID: 80 RVA: 0x00003DD2 File Offset: 0x00001FD2
	.method public final hidebysig specialname newslot virtual 
		instance valuetype [mscorlib]System.DateTime get_EndDate () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 12 (0xC) bytes
		.maxstack 8

		/* 0x00001FD3 02           */ IL_0000: ldarg.0
		/* 0x00001FD4 7C2C000004   */ IL_0001: ldflda    valuetype MaxSea.Security.LicenseStatus MaxSea.Security.LicensePolicy::_LicenseStatus
		/* 0x00001FD9 2808000006   */ IL_0006: call      instance valuetype [mscorlib]System.DateTime MaxSea.Security.LicenseStatus::get_EndDate()
		/* 0x00001FDE 2A           */ IL_000B: ret
	} // end of method LicensePolicy::get_EndDate

	// Token: 0x06000051 RID: 81 RVA: 0x00003DDF File Offset: 0x00001FDF
	.method public final hidebysig specialname newslot virtual 
		instance bool get_IsPresent () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 12 (0xC) bytes
		.maxstack 8

		/* 0x00001FE0 02           */ IL_0000: ldarg.0
		/* 0x00001FE1 7C2C000004   */ IL_0001: ldflda    valuetype MaxSea.Security.LicenseStatus MaxSea.Security.LicensePolicy::_LicenseStatus
		/* 0x00001FE6 2805000006   */ IL_0006: call      instance bool MaxSea.Security.LicenseStatus::get_IsPresent()
		/* 0x00001FEB 2A           */ IL_000B: ret
	} // end of method LicensePolicy::get_IsPresent

	// Token: 0x06000052 RID: 82 RVA: 0x00003DEC File Offset: 0x00001FEC
	.method public final hidebysig specialname newslot virtual 
		instance bool get_IsTrustworthy () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 12 (0xC) bytes
		.maxstack 8

		/* 0x00001FED 02           */ IL_0000: ldarg.0
		/* 0x00001FEE 7C2C000004   */ IL_0001: ldflda    valuetype MaxSea.Security.LicenseStatus MaxSea.Security.LicensePolicy::_LicenseStatus
		/* 0x00001FF3 2806000006   */ IL_0006: call      instance bool MaxSea.Security.LicenseStatus::get_IsTrustWorthy()
		/* 0x00001FF8 2A           */ IL_000B: ret
	} // end of method LicensePolicy::get_IsTrustworthy

	// Token: 0x06000053 RID: 83 RVA: 0x00003DF9 File Offset: 0x00001FF9
	.method public final hidebysig specialname newslot virtual 
		instance bool get_IsValid () cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 7 (0x7) bytes
		.maxstack 8

		/* 0x00001FFA 02           */ IL_0000: ldarg.0
		/* 0x00001FFB 7B2E000004   */ IL_0001: ldfld     bool MaxSea.Security.LicensePolicy::'<IsValid>k__BackingField'
		/* 0x00002000 2A           */ IL_0006: ret
	} // end of method LicensePolicy::get_IsValid

	// Token: 0x06000054 RID: 84 RVA: 0x00003E01 File Offset: 0x00002001
	.method private hidebysig specialname 
		instance void set_IsValid (
			bool 'value'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 8 (0x8) bytes
		.maxstack 8

		/* 0x00002002 02           */ IL_0000: ldarg.0
		/* 0x00002003 03           */ IL_0001: ldarg.1
		/* 0x00002004 7D2E000004   */ IL_0002: stfld     bool MaxSea.Security.LicensePolicy::'<IsValid>k__BackingField'
		/* 0x00002009 2A           */ IL_0007: ret
	} // end of method LicensePolicy::set_IsValid

	// Token: 0x06000055 RID: 85 RVA: 0x00003E0A File Offset: 0x0000200A
	.method public final hidebysig specialname newslot virtual 
		instance bool get_CanAcquire () cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 7 (0x7) bytes
		.maxstack 8

		/* 0x0000200B 02           */ IL_0000: ldarg.0
		/* 0x0000200C 7B2F000004   */ IL_0001: ldfld     bool MaxSea.Security.LicensePolicy::'<CanAcquire>k__BackingField'
		/* 0x00002011 2A           */ IL_0006: ret
	} // end of method LicensePolicy::get_CanAcquire

	// Token: 0x06000056 RID: 86 RVA: 0x00003E12 File Offset: 0x00002012
	.method private hidebysig specialname 
		instance void set_CanAcquire (
			bool 'value'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 8 (0x8) bytes
		.maxstack 8

		/* 0x00002013 02           */ IL_0000: ldarg.0
		/* 0x00002014 03           */ IL_0001: ldarg.1
		/* 0x00002015 7D2F000004   */ IL_0002: stfld     bool MaxSea.Security.LicensePolicy::'<CanAcquire>k__BackingField'
		/* 0x0000201A 2A           */ IL_0007: ret
	} // end of method LicensePolicy::set_CanAcquire

	// Token: 0x06000057 RID: 87 RVA: 0x00003E1B File Offset: 0x0000201B
	.method public final hidebysig specialname newslot virtual 
		instance bool get_CanMove () cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 7 (0x7) bytes
		.maxstack 8

		/* 0x0000201C 02           */ IL_0000: ldarg.0
		/* 0x0000201D 7B30000004   */ IL_0001: ldfld     bool MaxSea.Security.LicensePolicy::'<CanMove>k__BackingField'
		/* 0x00002022 2A           */ IL_0006: ret
	} // end of method LicensePolicy::get_CanMove

	// Token: 0x06000058 RID: 88 RVA: 0x00003E23 File Offset: 0x00002023
	.method private hidebysig specialname 
		instance void set_CanMove (
			bool 'value'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 8 (0x8) bytes
		.maxstack 8

		/* 0x00002024 02           */ IL_0000: ldarg.0
		/* 0x00002025 03           */ IL_0001: ldarg.1
		/* 0x00002026 7D30000004   */ IL_0002: stfld     bool MaxSea.Security.LicensePolicy::'<CanMove>k__BackingField'
		/* 0x0000202B 2A           */ IL_0007: ret
	} // end of method LicensePolicy::set_CanMove

	// Token: 0x06000059 RID: 89 RVA: 0x00003E2C File Offset: 0x0000202C
	.method public final hidebysig specialname newslot virtual 
		instance bool get_CanRemove () cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 7 (0x7) bytes
		.maxstack 8

		/* 0x0000202D 02           */ IL_0000: ldarg.0
		/* 0x0000202E 7B31000004   */ IL_0001: ldfld     bool MaxSea.Security.LicensePolicy::'<CanRemove>k__BackingField'
		/* 0x00002033 2A           */ IL_0006: ret
	} // end of method LicensePolicy::get_CanRemove

	// Token: 0x0600005A RID: 90 RVA: 0x00003E34 File Offset: 0x00002034
	.method private hidebysig specialname 
		instance void set_CanRemove (
			bool 'value'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 8 (0x8) bytes
		.maxstack 8

		/* 0x00002035 02           */ IL_0000: ldarg.0
		/* 0x00002036 03           */ IL_0001: ldarg.1
		/* 0x00002037 7D31000004   */ IL_0002: stfld     bool MaxSea.Security.LicensePolicy::'<CanRemove>k__BackingField'
		/* 0x0000203C 2A           */ IL_0007: ret
	} // end of method LicensePolicy::set_CanRemove

	// Token: 0x0600005B RID: 91 RVA: 0x00003E3D File Offset: 0x0000203D
	.method public final hidebysig specialname newslot virtual 
		instance bool get_CanDestroy () cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 7 (0x7) bytes
		.maxstack 8

		/* 0x0000203E 02           */ IL_0000: ldarg.0
		/* 0x0000203F 7B32000004   */ IL_0001: ldfld     bool MaxSea.Security.LicensePolicy::'<CanDestroy>k__BackingField'
		/* 0x00002044 2A           */ IL_0006: ret
	} // end of method LicensePolicy::get_CanDestroy

	// Token: 0x0600005C RID: 92 RVA: 0x00003E45 File Offset: 0x00002045
	.method private hidebysig specialname 
		instance void set_CanDestroy (
			bool 'value'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 8 (0x8) bytes
		.maxstack 8

		/* 0x00002046 02           */ IL_0000: ldarg.0
		/* 0x00002047 03           */ IL_0001: ldarg.1
		/* 0x00002048 7D32000004   */ IL_0002: stfld     bool MaxSea.Security.LicensePolicy::'<CanDestroy>k__BackingField'
		/* 0x0000204D 2A           */ IL_0007: ret
	} // end of method LicensePolicy::set_CanDestroy

	// Token: 0x0600005D RID: 93 RVA: 0x00003E4E File Offset: 0x0000204E
	.method public final hidebysig specialname newslot virtual 
		instance valuetype [MaxSea.Core]MaxSea.Security.LimitationType get_Limitation () cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 7 (0x7) bytes
		.maxstack 8

		/* 0x0000204F 02           */ IL_0000: ldarg.0
		/* 0x00002050 7B33000004   */ IL_0001: ldfld     valuetype [MaxSea.Core]MaxSea.Security.LimitationType MaxSea.Security.LicensePolicy::'<Limitation>k__BackingField'
		/* 0x00002055 2A           */ IL_0006: ret
	} // end of method LicensePolicy::get_Limitation

	// Token: 0x0600005E RID: 94 RVA: 0x00003E56 File Offset: 0x00002056
	.method private hidebysig specialname 
		instance void set_Limitation (
			valuetype [MaxSea.Core]MaxSea.Security.LimitationType 'value'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 8 (0x8) bytes
		.maxstack 8

		/* 0x00002057 02           */ IL_0000: ldarg.0
		/* 0x00002058 03           */ IL_0001: ldarg.1
		/* 0x00002059 7D33000004   */ IL_0002: stfld     valuetype [MaxSea.Core]MaxSea.Security.LimitationType MaxSea.Security.LicensePolicy::'<Limitation>k__BackingField'
		/* 0x0000205E 2A           */ IL_0007: ret
	} // end of method LicensePolicy::set_Limitation

	// Token: 0x0600005F RID: 95 RVA: 0x00003E5F File Offset: 0x0000205F
	.method public final hidebysig specialname newslot virtual 
		instance bool get_HasBeenManuallyActivated () cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 7 (0x7) bytes
		.maxstack 8

		/* 0x00002060 02           */ IL_0000: ldarg.0
		/* 0x00002061 7B34000004   */ IL_0001: ldfld     bool MaxSea.Security.LicensePolicy::'<HasBeenManuallyActivated>k__BackingField'
		/* 0x00002066 2A           */ IL_0006: ret
	} // end of method LicensePolicy::get_HasBeenManuallyActivated

	// Token: 0x06000060 RID: 96 RVA: 0x00003E67 File Offset: 0x00002067
	.method private hidebysig specialname 
		instance void set_HasBeenManuallyActivated (
			bool 'value'
		) cil managed 
	{
		.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Header Size: 1 byte
		// Code Size: 8 (0x8) bytes
		.maxstack 8

		/* 0x00002068 02           */ IL_0000: ldarg.0
		/* 0x00002069 03           */ IL_0001: ldarg.1
		/* 0x0000206A 7D34000004   */ IL_0002: stfld     bool MaxSea.Security.LicensePolicy::'<HasBeenManuallyActivated>k__BackingField'
		/* 0x0000206F 2A           */ IL_0007: ret
	} // end of method LicensePolicy::set_HasBeenManuallyActivated

	// Token: 0x06000061 RID: 97 RVA: 0x00003E70 File Offset: 0x00002070
	.method public hidebysig static 
		!!T MountLicensePolicy<([MaxSea.Core]MaxSea.Security.ILicensePolicy) T> (
			class [MaxSea.IOC]MaxSea.IOC.WorkItem rootWorkItem,
			string unlockCodePoolPath
		) cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 161 (0xA1) bytes
		// LocalVarSig Token: 0x11000015 RID: 21
		.maxstack 3
		.locals init (
			[0] class MaxSea.Security.LicensePolicy/'<>c__DisplayClass46_0`1'<!!T>
		)

		/* 0x0000207C 73E800000A   */ IL_0000: newobj    instance void class MaxSea.Security.LicensePolicy/'<>c__DisplayClass46_0`1'<!!T>::.ctor()
		/* 0x00002081 0A           */ IL_0005: stloc.0
		/* 0x00002082 06           */ IL_0006: ldloc.0
		/* 0x00002083 03           */ IL_0007: ldarg.1
		/* 0x00002084 7DE900000A   */ IL_0008: stfld     string class MaxSea.Security.LicensePolicy/'<>c__DisplayClass46_0`1'<!!T>::unlockCodePoolPath
		/* 0x00002089 02           */ IL_000D: ldarg.0
		/* 0x0000208A 6FEA00000A   */ IL_000E: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x0000208F 7EEB00000A   */ IL_0013: ldsfld    class [mscorlib]System.Func`1<class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy> class MaxSea.Security.LicensePolicy/'<>c__46`1'<!!T>::'<>9__46_0'
		/* 0x00002094 25           */ IL_0018: dup
		/* 0x00002095 2D17         */ IL_0019: brtrue.s  IL_0032

		/* 0x00002097 26           */ IL_001B: pop
		/* 0x00002098 7EEC00000A   */ IL_001C: ldsfld    class MaxSea.Security.LicensePolicy/'<>c__46`1'<!0> class MaxSea.Security.LicensePolicy/'<>c__46`1'<!!T>::'<>9'
		/* 0x0000209D FE06ED00000A */ IL_0021: ldftn     instance class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy class MaxSea.Security.LicensePolicy/'<>c__46`1'<!!T>::'<MountLicensePolicy>b__46_0'()
		/* 0x000020A3 73EE00000A   */ IL_0027: newobj    instance void class [mscorlib]System.Func`1<class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy>::.ctor(object, native int)
		/* 0x000020A8 25           */ IL_002C: dup
		/* 0x000020A9 80EB00000A   */ IL_002D: stsfld    class [mscorlib]System.Func`1<class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy> class MaxSea.Security.LicensePolicy/'<>c__46`1'<!!T>::'<>9__46_0'

		/* 0x000020AE 6F1500002B   */ IL_0032: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy, class [MaxSea.Core]MaxSea.Security.IPublicIdentityIdProvider>(class [mscorlib]System.Func`1<!!0>)
		/* 0x000020B3 02           */ IL_0037: ldarg.0
		/* 0x000020B4 6FEA00000A   */ IL_0038: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x000020B9 06           */ IL_003D: ldloc.0
		/* 0x000020BA FE06F000000A */ IL_003E: ldftn     instance class [MaxSea.Core]MaxSea.Security.IUnlockCodesPool class MaxSea.Security.LicensePolicy/'<>c__DisplayClass46_0`1'<!!T>::'<MountLicensePolicy>b__1'()
		/* 0x000020C0 73F100000A   */ IL_0044: newobj    instance void class [mscorlib]System.Func`1<class [MaxSea.Core]MaxSea.Security.IUnlockCodesPool>::.ctor(object, native int)
		/* 0x000020C5 6F1600002B   */ IL_0049: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<class [MaxSea.Core]MaxSea.Security.IUnlockCodesPool>(class [mscorlib]System.Func`1<!!0>)
		/* 0x000020CA 02           */ IL_004E: ldarg.0
		/* 0x000020CB 6FEA00000A   */ IL_004F: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x000020D0 6F1700002B   */ IL_0054: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<!!T, class [MaxSea.Core]MaxSea.Security.ILicensePolicy>()
		/* 0x000020D5 02           */ IL_0059: ldarg.0
		/* 0x000020D6 6FEA00000A   */ IL_005A: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x000020DB 6F1800002B   */ IL_005F: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<class MaxSea.Security.SecretIdentityPolicyTimeZero, class [MaxSea.Core]MaxSea.Security.ISecretIdentityPolicy>()
		/* 0x000020E0 02           */ IL_0064: ldarg.0
		/* 0x000020E1 6FEA00000A   */ IL_0065: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x000020E6 6F1900002B   */ IL_006A: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<class MaxSea.Security.LicenseMM4Identity, class [MaxSea.Core]MaxSea.Security.IMM4Identity>()
		/* 0x000020EB 02           */ IL_006F: ldarg.0
		/* 0x000020EC 6FEA00000A   */ IL_0070: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x000020F1 6F1A00002B   */ IL_0075: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<class MaxSea.Security.Permits.TimeZeroMM4PermitService, class [MaxSea.Core]MaxSea.Security.IMM4PermitService, class [MaxSea.Core]MaxSea.Security.IMM4TileKeyProvider>()
		/* 0x000020F6 02           */ IL_007A: ldarg.0
		/* 0x000020F7 6FEA00000A   */ IL_007B: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x000020FC 6F1B00002B   */ IL_0080: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<class MaxSea.Security.Permits.TimeZeroMM4ZoneRegistry, class [MaxSea.Model]MaxSea.Model.MM4.IMM4ZoneRegistry>()
		/* 0x00002101 02           */ IL_0085: ldarg.0
		/* 0x00002102 6FEA00000A   */ IL_0086: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x00002107 6F1C00002B   */ IL_008B: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<class MaxSea.Security.Store.StorePaymentApi, class [MaxSea.Model]MaxSea.Model.Store.IStorePaymentApi>()
		/* 0x0000210C 02           */ IL_0090: ldarg.0
		/* 0x0000210D 6FEA00000A   */ IL_0091: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x00002112 6F1D00002B   */ IL_0096: callvirt  instance !!0 [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Get<class [MaxSea.Core]MaxSea.Security.ILicensePolicy>()
		/* 0x00002117 A52400001B   */ IL_009B: unbox.any !!T
		/* 0x0000211C 2A           */ IL_00A0: ret
	} // end of method LicensePolicy::MountLicensePolicy

	// Token: 0x06000062 RID: 98 RVA: 0x00003F1D File Offset: 0x0000211D
	.method public hidebysig 
		instance void Initialize (
			class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy publicIdentity,
			class [MaxSea.Core]MaxSea.Security.IUnlockCodesPool unlockCodesPool,
			class [MaxSea.IOC]MaxSea.IOC.WorkItem rootWorkItem,
			class [MaxSea.Core]MaxSea.Core.Threading.IIdleService idleService
		) cil managed 
	{
		.custom instance void [MaxSea.IOC]MaxSea.IOC.InjectionMethodAttribute::.ctor() = (
			01 00 00 00
		)
		.param [1]
			.custom instance void [MaxSea.IOC]MaxSea.IOC.ServiceDependency::.ctor() = (
				01 00 00 00
			)
		.param [2]
			.custom instance void [MaxSea.IOC]MaxSea.IOC.ServiceDependency::.ctor() = (
				01 00 00 00
			)
		.param [3]
			.custom instance void [MaxSea.IOC]MaxSea.IOC.ServiceDependency::.ctor() = (
				01 00 00 00
			)
		.param [4]
			.custom instance void [MaxSea.IOC]MaxSea.IOC.ServiceDependency::.ctor() = (
				01 00 00 00
			)
		// Header Size: 1 byte
		// Code Size: 44 (0x2C) bytes
		.maxstack 8

		/* 0x0000211E 03           */ IL_0000: ldarg.1
		/* 0x0000211F 2C03         */ IL_0001: brfalse.s IL_0006

		/* 0x00002121 04           */ IL_0003: ldarg.2
		/* 0x00002122 2D08         */ IL_0004: brtrue.s  IL_000E

		/* 0x00002124 1A           */ IL_0006: ldc.i4.4
		/* 0x00002125 14           */ IL_0007: ldnull
		/* 0x00002126 73F600000A   */ IL_0008: newobj    instance void [MaxSea.Toolkit.Pcl]MaxSea.MaxSeaException::.ctor(valuetype [MaxSea.Toolkit.Pcl]MaxSea.ExceptionResource, class [mscorlib]System.Exception)
		/* 0x0000212B 7A           */ IL_000D: throw

		/* 0x0000212C 02           */ IL_000E: ldarg.0
		/* 0x0000212D 05           */ IL_000F: ldarg.3
		/* 0x0000212E 7D26000004   */ IL_0010: stfld     class [MaxSea.IOC]MaxSea.IOC.WorkItem MaxSea.Security.LicensePolicy::_RootWorkItem
		/* 0x00002133 02           */ IL_0015: ldarg.0
		/* 0x00002134 04           */ IL_0016: ldarg.2
		/* 0x00002135 7D27000004   */ IL_0017: stfld     class [MaxSea.Core]MaxSea.Security.IUnlockCodesPool MaxSea.Security.LicensePolicy::_UnlockCodesPool
		/* 0x0000213A 02           */ IL_001C: ldarg.0
		/* 0x0000213B 03           */ IL_001D: ldarg.1
		/* 0x0000213C 7D25000004   */ IL_001E: stfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
		/* 0x00002141 02           */ IL_0023: ldarg.0
		/* 0x00002142 0E04         */ IL_0024: ldarg.s   idleService
		/* 0x00002144 7D28000004   */ IL_0026: stfld     class [MaxSea.Core]MaxSea.Core.Threading.IIdleService MaxSea.Security.LicensePolicy::_IdleService
		/* 0x00002149 2A           */ IL_002B: ret
	} // end of method LicensePolicy::Initialize

	// Token: 0x06000063 RID: 99 RVA: 0x00003F4A File Offset: 0x0000214A
	.method private hidebysig 
		instance void CheckTimeLimitationIsExpired (
			object sender,
			class [MaxSea.Core]MaxSea.Framework.TimeStampedEventEventArgs eventArgs
		) cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 56 (0x38) bytes
		.maxstack 8

		/* 0x0000214B 04           */ IL_0000: ldarg.2
		/* 0x0000214C 6FF700000A   */ IL_0001: callvirt  instance int64 [MaxSea.Core]MaxSea.Framework.TimeStampedEventEventArgs::get_ElapsedTimeInMs()
		/* 0x00002151 2080EE3600   */ IL_0006: ldc.i4    3600000
		/* 0x00002156 6A           */ IL_000B: conv.i8
		/* 0x00002157 3129         */ IL_000C: ble.s     IL_0037

		/* 0x00002159 04           */ IL_000E: ldarg.2
		/* 0x0000215A 6FF800000A   */ IL_000F: callvirt  instance void [MaxSea.Core]MaxSea.Framework.TimeStampedEventEventArgs::Reset()
		/* 0x0000215F 02           */ IL_0014: ldarg.0
		/* 0x00002160 7C2C000004   */ IL_0015: ldflda    valuetype MaxSea.Security.LicenseStatus MaxSea.Security.LicensePolicy::_LicenseStatus
		/* 0x00002165 2809000006   */ IL_001A: call      instance bool MaxSea.Security.LicenseStatus::get_IsLimitationReached()
		/* 0x0000216A 2C16         */ IL_001F: brfalse.s IL_0037

		/* 0x0000216C 16           */ IL_0021: ldc.i4.0
		/* 0x0000216D 28FA000006   */ IL_0022: call      void MaxSea.Security.SecureBackupApi::ClearAll(bool)
		/* 0x00002172 02           */ IL_0027: ldarg.0
		/* 0x00002173 28F900000A   */ IL_0028: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_LicenseHasExpired()
		/* 0x00002178 28FA00000A   */ IL_002D: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_LicenseHasExpiredTitle()
		/* 0x0000217D 286F000006   */ IL_0032: call      instance void MaxSea.Security.LicensePolicy::ExitWithMessage(string, string)

		/* 0x00002182 2A           */ IL_0037: ret
	} // end of method LicensePolicy::CheckTimeLimitationIsExpired

	// Token: 0x06000064 RID: 100 RVA: 0x00003F84 File Offset: 0x00002184
	.method public hidebysig 
		instance !!T AcquireConfigurationPolicy<class ([MaxSea.Core]MaxSea.Security.IConfigurationPolicy) T> (
			class [MaxSea.IOC]MaxSea.IOC.WorkItem rootWorkItem,
			class [mscorlib]System.Func`1<!!T> configurationPolicyFactory
		) cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 317 (0x13D) bytes
		// LocalVarSig Token: 0x11000016 RID: 22
		.maxstack 4
		.locals init (
			[0] class [MaxSea.Core]MaxSea.Security.IConfigurationPolicy,
			[1] class MaxSea.Security.ConfigurationPolicyTimeZero,
			[2] !!T,
			[3] valuetype [MaxSea.Core]MaxSea.Security.ProductDefinition
		)

		/* 0x00002190 14           */ IL_0000: ldnull
		/* 0x00002191 0A           */ IL_0001: stloc.0
		/* 0x00002192 02           */ IL_0002: ldarg.0
		/* 0x00002193 2865000006   */ IL_0003: call      instance bool MaxSea.Security.LicensePolicy::CanLaunch()
		/* 0x00002198 2C46         */ IL_0008: brfalse.s IL_0050

		/* 0x0000219A 02           */ IL_000A: ldarg.0
		/* 0x0000219B 2851000006   */ IL_000B: call      instance bool MaxSea.Security.LicensePolicy::get_IsPresent()
		/* 0x000021A0 2C3E         */ IL_0010: brfalse.s IL_0050

		/* 0x000021A2 02           */ IL_0012: ldarg.0
		/* 0x000021A3 2852000006   */ IL_0013: call      instance bool MaxSea.Security.LicensePolicy::get_IsTrustworthy()
		/* 0x000021A8 2C36         */ IL_0018: brfalse.s IL_0050

		/* 0x000021AA 02           */ IL_001A: ldarg.0
		/* 0x000021AB 2866000006   */ IL_001B: call      instance void MaxSea.Security.LicensePolicy::CheckActivationAfterBoot()
		/* 0x000021B0 03           */ IL_0020: ldarg.1
		/* 0x000021B1 6FEA00000A   */ IL_0021: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x000021B6 04           */ IL_0026: ldarg.2
		/* 0x000021B7 6F1E00002B   */ IL_0027: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<!!T, class [MaxSea.Core]MaxSea.Security.IConfigurationPolicy>(class [mscorlib]System.Func`1<!!0>)
		/* 0x000021BC 03           */ IL_002C: ldarg.1
		/* 0x000021BD 6FEA00000A   */ IL_002D: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x000021C2 17           */ IL_0032: ldc.i4.1
		/* 0x000021C3 6F1F00002B   */ IL_0033: callvirt  instance !!0 [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Get<class [MaxSea.Core]MaxSea.Security.IConfigurationPolicy>(bool)
		/* 0x000021C8 0A           */ IL_0038: stloc.0
		/* 0x000021C9 06           */ IL_0039: ldloc.0
		/* 0x000021CA 3A91000000   */ IL_003A: brtrue    IL_00D0

		/* 0x000021CF 723A080070   */ IL_003F: ldstr     "MaxSeaProgram - Configuration Policy is null"
		/* 0x000021D4 14           */ IL_0044: ldnull
		/* 0x000021D5 14           */ IL_0045: ldnull
		/* 0x000021D6 28FC00000A   */ IL_0046: call      void [MaxSea.Core]MaxSea.Framework.Logger::Suspect(string, class [mscorlib]System.Exception, string)
		/* 0x000021DB 3880000000   */ IL_004B: br        IL_00D0

		/* 0x000021E0 02           */ IL_0050: ldarg.0
		/* 0x000021E1 2855000006   */ IL_0051: call      instance bool MaxSea.Security.LicensePolicy::get_CanAcquire()
		/* 0x000021E6 2C78         */ IL_0056: brfalse.s IL_00D0

		/* 0x000021E8 02           */ IL_0058: ldarg.0
		/* 0x000021E9 2868000006   */ IL_0059: call      instance bool MaxSea.Security.LicensePolicy::Acquire()
		/* 0x000021EE 2C70         */ IL_005E: brfalse.s IL_00D0

		/* 0x000021F0 02           */ IL_0060: ldarg.0
		/* 0x000021F1 2865000006   */ IL_0061: call      instance bool MaxSea.Security.LicensePolicy::CanLaunch()
		/* 0x000021F6 2C68         */ IL_0066: brfalse.s IL_00D0

		/* 0x000021F8 02           */ IL_0068: ldarg.0
		/* 0x000021F9 2851000006   */ IL_0069: call      instance bool MaxSea.Security.LicensePolicy::get_IsPresent()
		/* 0x000021FE 2C60         */ IL_006E: brfalse.s IL_00D0

		/* 0x00002200 02           */ IL_0070: ldarg.0
		/* 0x00002201 2852000006   */ IL_0071: call      instance bool MaxSea.Security.LicensePolicy::get_IsTrustworthy()
		/* 0x00002206 2C58         */ IL_0076: brfalse.s IL_00D0

		/* 0x00002208 02           */ IL_0078: ldarg.0
		/* 0x00002209 2866000006   */ IL_0079: call      instance void MaxSea.Security.LicensePolicy::CheckActivationAfterBoot()
		/* 0x0000220E 03           */ IL_007E: ldarg.1
		/* 0x0000220F 6FEA00000A   */ IL_007F: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x00002214 04           */ IL_0084: ldarg.2
		/* 0x00002215 6F1E00002B   */ IL_0085: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<!!T, class [MaxSea.Core]MaxSea.Security.IConfigurationPolicy>(class [mscorlib]System.Func`1<!!0>)
		/* 0x0000221A 03           */ IL_008A: ldarg.1
		/* 0x0000221B 6FEA00000A   */ IL_008B: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x00002220 17           */ IL_0090: ldc.i4.1
		/* 0x00002221 6F1F00002B   */ IL_0091: callvirt  instance !!0 [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Get<class [MaxSea.Core]MaxSea.Security.IConfigurationPolicy>(bool)
		/* 0x00002226 0A           */ IL_0096: stloc.0
		/* 0x00002227 06           */ IL_0097: ldloc.0
		/* 0x00002228 2D0C         */ IL_0098: brtrue.s  IL_00A6

		/* 0x0000222A 723A080070   */ IL_009A: ldstr     "MaxSeaProgram - Configuration Policy is null"
		/* 0x0000222F 14           */ IL_009F: ldnull
		/* 0x00002230 14           */ IL_00A0: ldnull
		/* 0x00002231 28FC00000A   */ IL_00A1: call      void [MaxSea.Core]MaxSea.Framework.Logger::Suspect(string, class [mscorlib]System.Exception, string)

		/* 0x00002236 02           */ IL_00A6: ldarg.0
		/* 0x00002237 285F000006   */ IL_00A7: call      instance bool MaxSea.Security.LicensePolicy::get_HasBeenManuallyActivated()
		/* 0x0000223C 2C22         */ IL_00AC: brfalse.s IL_00D0

		/* 0x0000223E 02           */ IL_00AE: ldarg.0
		/* 0x0000223F 06           */ IL_00AF: ldloc.0
		/* 0x00002240 17           */ IL_00B0: ldc.i4.1
		/* 0x00002241 16           */ IL_00B1: ldc.i4.0
		/* 0x00002242 2869000006   */ IL_00B2: call      instance bool MaxSea.Security.LicensePolicy::AskUnlockCodes(class [MaxSea.Core]MaxSea.Security.IConfigurationPolicy, valuetype [MaxSea.Core]MaxSea.Security.UnlockCodeType, bool)
		/* 0x00002247 26           */ IL_00B7: pop
		/* 0x00002248 02           */ IL_00B8: ldarg.0
		/* 0x00002249 06           */ IL_00B9: ldloc.0
		/* 0x0000224A 16           */ IL_00BA: ldc.i4.0
		/* 0x0000224B 16           */ IL_00BB: ldc.i4.0
		/* 0x0000224C 2869000006   */ IL_00BC: call      instance bool MaxSea.Security.LicensePolicy::AskUnlockCodes(class [MaxSea.Core]MaxSea.Security.IConfigurationPolicy, valuetype [MaxSea.Core]MaxSea.Security.UnlockCodeType, bool)
		/* 0x00002251 26           */ IL_00C1: pop
		/* 0x00002252 06           */ IL_00C2: ldloc.0
		/* 0x00002253 6FFD00000A   */ IL_00C3: callvirt  instance bool [MaxSea.Core]MaxSea.Security.IConfigurationPolicy::get_IsSynchronized()
		/* 0x00002258 2D06         */ IL_00C8: brtrue.s  IL_00D0

		/* 0x0000225A 06           */ IL_00CA: ldloc.0
		/* 0x0000225B 6FFE00000A   */ IL_00CB: callvirt  instance void [MaxSea.Core]MaxSea.Security.IConfigurationPolicy::Synchronize()

		/* 0x00002260 06           */ IL_00D0: ldloc.0
		/* 0x00002261 2C63         */ IL_00D1: brfalse.s IL_0136

		/* 0x00002263 06           */ IL_00D3: ldloc.0
		/* 0x00002264 7507000002   */ IL_00D4: isinst    MaxSea.Security.ConfigurationPolicyTimeZero
		/* 0x00002269 0B           */ IL_00D9: stloc.1
		/* 0x0000226A 2B23         */ IL_00DA: br.s      IL_00FF
		// loop start (head: IL_00FF)
			/* 0x0000226C 02           */ IL_00DC: ldarg.0
			/* 0x0000226D 06           */ IL_00DD: ldloc.0
			/* 0x0000226E 17           */ IL_00DE: ldc.i4.1
			/* 0x0000226F 17           */ IL_00DF: ldc.i4.1
			/* 0x00002270 2869000006   */ IL_00E0: call      instance bool MaxSea.Security.LicensePolicy::AskUnlockCodes(class [MaxSea.Core]MaxSea.Security.IConfigurationPolicy, valuetype [MaxSea.Core]MaxSea.Security.UnlockCodeType, bool)
			/* 0x00002275 2D0A         */ IL_00E5: brtrue.s  IL_00F1

			/* 0x00002277 1202         */ IL_00E7: ldloca.s  V_2
			/* 0x00002279 FE152400001B */ IL_00E9: initobj   !!T
			/* 0x0000227F 08           */ IL_00EF: ldloc.2
			/* 0x00002280 2A           */ IL_00F0: ret

			/* 0x00002281 06           */ IL_00F1: ldloc.0
			/* 0x00002282 6FFD00000A   */ IL_00F2: callvirt  instance bool [MaxSea.Core]MaxSea.Security.IConfigurationPolicy::get_IsSynchronized()
			/* 0x00002287 2D06         */ IL_00F7: brtrue.s  IL_00FF

			/* 0x00002289 06           */ IL_00F9: ldloc.0
			/* 0x0000228A 6FFE00000A   */ IL_00FA: callvirt  instance void [MaxSea.Core]MaxSea.Security.IConfigurationPolicy::Synchronize()

			/* 0x0000228F 07           */ IL_00FF: ldloc.1
			/* 0x00002290 6F12000006   */ IL_0100: callvirt  instance uint8 MaxSea.Security.ConfigurationPolicyTimeZero::get_CommercialVersion()
			/* 0x00002295 02           */ IL_0105: ldarg.0
			/* 0x00002296 284F000006   */ IL_0106: call      instance uint8 MaxSea.Security.LicensePolicy::get_CommercialVersion()
			/* 0x0000229B 33CF         */ IL_010B: bne.un.s  IL_00DC
		// end loop

		/* 0x0000229D 06           */ IL_010D: ldloc.0
		/* 0x0000229E 6FFF00000A   */ IL_010E: callvirt  instance valuetype [MaxSea.Core]MaxSea.Security.ProductDefinition [MaxSea.Core]MaxSea.Security.IConfigurationPolicy::get_ProductDefinition()
		/* 0x000022A3 0D           */ IL_0113: stloc.3
		/* 0x000022A4 1203         */ IL_0114: ldloca.s  V_3
		/* 0x000022A6 280001000A   */ IL_0116: call      instance valuetype [MaxSea.Core]MaxSea.Security.Product [MaxSea.Core]MaxSea.Security.ProductDefinition::get_ProductType()
		/* 0x000022AB 17           */ IL_011B: ldc.i4.1
		/* 0x000022AC 330D         */ IL_011C: bne.un.s  IL_012B

		/* 0x000022AE 03           */ IL_011E: ldarg.1
		/* 0x000022AF 6FEA00000A   */ IL_011F: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x000022B4 6F2000002B   */ IL_0124: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<class MaxSea.Security.Store.TimeZeroRecStorePaymentTheme, class [MaxSea.Model]MaxSea.Model.Store.IStorePaymentTheme>()
		/* 0x000022B9 2B0B         */ IL_0129: br.s      IL_0136

		/* 0x000022BB 03           */ IL_012B: ldarg.1
		/* 0x000022BC 6FEA00000A   */ IL_012C: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x000022C1 6F2100002B   */ IL_0131: callvirt  instance void [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Bind<class MaxSea.Security.Store.TimeZeroProStorePaymentTheme, class [MaxSea.Model]MaxSea.Model.Store.IStorePaymentTheme>()

		/* 0x000022C6 06           */ IL_0136: ldloc.0
		/* 0x000022C7 A52400001B   */ IL_0137: unbox.any !!T
		/* 0x000022CC 2A           */ IL_013C: ret
	} // end of method LicensePolicy::AcquireConfigurationPolicy

	// Token: 0x06000065 RID: 101 RVA: 0x000040D0 File Offset: 0x000022D0
	.method public final hidebysig newslot virtual 
		instance bool CanLaunch () cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 295 (0x127) bytes
		// LocalVarSig Token: 0x11000017 RID: 23
		.maxstack 9
		.locals init (
			[0] string,
			[1] valuetype [mscorlib]System.Nullable`1<bool>,
			[2] bool,
			[3] class [mscorlib]System.Exception
		)

		/* 0x000022DC 7294080070   */ IL_0000: ldstr     "Beginning"
		/* 0x000022E1 0A           */ IL_0005: stloc.0
		/* 0x000022E2 02           */ IL_0006: ldarg.0
		/* 0x000022E3 286D000006   */ IL_0007: call      instance void MaxSea.Security.LicensePolicy::ResetStatus()
		/* 0x000022E8 02           */ IL_000C: ldarg.0
		/* 0x000022E9 7B25000004   */ IL_000D: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
		/* 0x000022EE 25           */ IL_0012: dup
		/* 0x000022EF 2D0C         */ IL_0013: brtrue.s  IL_0021

		/* 0x000022F1 26           */ IL_0015: pop
		/* 0x000022F2 1201         */ IL_0016: ldloca.s  V_1
		/* 0x000022F4 FE152500001B */ IL_0018: initobj   valuetype [mscorlib]System.Nullable`1<bool>
		/* 0x000022FA 07           */ IL_001E: ldloc.1
		/* 0x000022FB 2B1E         */ IL_001F: br.s      IL_003F

		/* 0x000022FD 6F8800000A   */ IL_0021: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
		/* 0x00002302 25           */ IL_0026: dup
		/* 0x00002303 2D0C         */ IL_0027: brtrue.s  IL_0035

		/* 0x00002305 26           */ IL_0029: pop
		/* 0x00002306 1201         */ IL_002A: ldloca.s  V_1
		/* 0x00002308 FE152500001B */ IL_002C: initobj   valuetype [mscorlib]System.Nullable`1<bool>
		/* 0x0000230E 07           */ IL_0032: ldloc.1
		/* 0x0000230F 2B0A         */ IL_0033: br.s      IL_003F

		/* 0x00002311 280101000A   */ IL_0035: call      instance bool [MaxSea.Core]MaxSea.Security.PublicIdentity::get_IsValid()
		/* 0x00002316 730201000A   */ IL_003A: newobj    instance void valuetype [mscorlib]System.Nullable`1<bool>::.ctor(!0)

		/* 0x0000231B 0B           */ IL_003F: stloc.1
		/* 0x0000231C 1201         */ IL_0040: ldloca.s  V_1
		/* 0x0000231E 280301000A   */ IL_0042: call      instance !0 valuetype [mscorlib]System.Nullable`1<bool>::GetValueOrDefault()
		/* 0x00002323 2D02         */ IL_0047: brtrue.s  IL_004B

		/* 0x00002325 16           */ IL_0049: ldc.i4.0
		/* 0x00002326 2A           */ IL_004A: ret

		/* 0x00002327 00           */ IL_004B: nop
		.try
		{
			/* 0x00002328 72A8080070   */ IL_004C: ldstr     "Getting Status"
			/* 0x0000232D 0A           */ IL_0051: stloc.0
			/* 0x0000232E 02           */ IL_0052: ldarg.0
			/* 0x0000232F 02           */ IL_0053: ldarg.0
			/* 0x00002330 7B2B000004   */ IL_0054: ldfld     class MaxSea.Security.SECSystem MaxSea.Security.LicensePolicy::_SecSystem
			/* 0x00002335 6FEF000006   */ IL_0059: callvirt  instance valuetype MaxSea.Security.LicenseStatus MaxSea.Security.SECSystem::GetLicenseStatus()
			/* 0x0000233A 7D2C000004   */ IL_005E: stfld     valuetype MaxSea.Security.LicenseStatus MaxSea.Security.LicensePolicy::_LicenseStatus
			/* 0x0000233F 02           */ IL_0063: ldarg.0
			/* 0x00002340 19           */ IL_0064: ldc.i4.3
			/* 0x00002341 285E000006   */ IL_0065: call      instance void MaxSea.Security.LicensePolicy::set_Limitation(valuetype [MaxSea.Core]MaxSea.Security.LimitationType)
			/* 0x00002346 72C6080070   */ IL_006A: ldstr     "Getting limitation"
			/* 0x0000234B 0A           */ IL_006F: stloc.0
			/* 0x0000234C 02           */ IL_0070: ldarg.0
			/* 0x0000234D 2851000006   */ IL_0071: call      instance bool MaxSea.Security.LicensePolicy::get_IsPresent()
			/* 0x00002352 2C39         */ IL_0076: brfalse.s IL_00B1

			/* 0x00002354 02           */ IL_0078: ldarg.0
			/* 0x00002355 2852000006   */ IL_0079: call      instance bool MaxSea.Security.LicensePolicy::get_IsTrustworthy()
			/* 0x0000235A 2C31         */ IL_007E: brfalse.s IL_00B1

			/* 0x0000235C 02           */ IL_0080: ldarg.0
			/* 0x0000235D 7C2C000004   */ IL_0081: ldflda    valuetype MaxSea.Security.LicenseStatus MaxSea.Security.LicensePolicy::_LicenseStatus
			/* 0x00002362 280B000006   */ IL_0086: call      instance valuetype MaxSea.Security.LicenseAuthorization MaxSea.Security.LicenseStatus::GetAuthorization()
			/* 0x00002367 19           */ IL_008B: ldc.i4.3
			/* 0x00002368 3323         */ IL_008C: bne.un.s  IL_00B1

			/* 0x0000236A 02           */ IL_008E: ldarg.0
			/* 0x0000236B 18           */ IL_008F: ldc.i4.2
			/* 0x0000236C 285E000006   */ IL_0090: call      instance void MaxSea.Security.LicensePolicy::set_Limitation(valuetype [MaxSea.Core]MaxSea.Security.LimitationType)
			/* 0x00002371 02           */ IL_0095: ldarg.0
			/* 0x00002372 7B28000004   */ IL_0096: ldfld     class [MaxSea.Core]MaxSea.Core.Threading.IIdleService MaxSea.Security.LicensePolicy::_IdleService
			/* 0x00002377 02           */ IL_009B: ldarg.0
			/* 0x00002378 FE0663000006 */ IL_009C: ldftn     instance void MaxSea.Security.LicensePolicy::CheckTimeLimitationIsExpired(object, class [MaxSea.Core]MaxSea.Framework.TimeStampedEventEventArgs)
			/* 0x0000237E 730401000A   */ IL_00A2: newobj    instance void class [mscorlib]System.EventHandler`1<class [MaxSea.Core]MaxSea.Framework.TimeStampedEventEventArgs>::.ctor(object, native int)
			/* 0x00002383 72EC080070   */ IL_00A7: ldstr     "TimeLimitationService"
			/* 0x00002388 6F0501000A   */ IL_00AC: callvirt  instance void [MaxSea.Core]MaxSea.Core.Threading.IIdleService::AddTimeStampedClient(class [mscorlib]System.EventHandler`1<class [MaxSea.Core]MaxSea.Framework.TimeStampedEventEventArgs>, string)

			/* 0x0000238D 02           */ IL_00B1: ldarg.0
			/* 0x0000238E 7C2C000004   */ IL_00B2: ldflda    valuetype MaxSea.Security.LicenseStatus MaxSea.Security.LicensePolicy::_LicenseStatus
			/* 0x00002393 2809000006   */ IL_00B7: call      instance bool MaxSea.Security.LicenseStatus::get_IsLimitationReached()
			/* 0x00002398 2C34         */ IL_00BC: brfalse.s IL_00F2

			/* 0x0000239A 7218090070   */ IL_00BE: ldstr     "popping mesgbox"
			/* 0x0000239F 0A           */ IL_00C3: stloc.0
			/* 0x000023A0 14           */ IL_00C4: ldnull
			/* 0x000023A1 28F900000A   */ IL_00C5: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_LicenseHasExpired()
			/* 0x000023A6 28FA00000A   */ IL_00CA: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_LicenseHasExpiredTitle()
			/* 0x000023AB 1F10         */ IL_00CF: ldc.i4.s  16
			/* 0x000023AD 16           */ IL_00D1: ldc.i4.0
			/* 0x000023AE 16           */ IL_00D2: ldc.i4.0
			/* 0x000023AF 7E0601000A   */ IL_00D3: ldsfld    valuetype [MaxSea.Toolkit.Pcl]MaxSea.AtomicTypes.Data.Duration [MaxSea.Toolkit.Pcl]MaxSea.AtomicTypes.Data.Duration::Empty
			/* 0x000023B4 17           */ IL_00D8: ldc.i4.1
			/* 0x000023B5 14           */ IL_00D9: ldnull
			/* 0x000023B6 730701000A   */ IL_00DA: newobj    instance void [MaxSea.ControlsLibrary]MaxSea.ControlsLibrary.MxMessageBox::.ctor(class [System.Windows.Forms]System.Windows.Forms.IWin32Window, string, string, valuetype [System.Windows.Forms]System.Windows.Forms.MessageBoxIcon, valuetype [System.Windows.Forms]System.Windows.Forms.MessageBoxButtons, valuetype [System.Windows.Forms]System.Windows.Forms.MessageBoxDefaultButton, valuetype [MaxSea.Toolkit.Pcl]MaxSea.AtomicTypes.Data.Duration, bool, class [mscorlib]System.Collections.Generic.List`1<string>)
			/* 0x000023BB 17           */ IL_00DF: ldc.i4.1
			/* 0x000023BC 17           */ IL_00E0: ldc.i4.1
			/* 0x000023BD 16           */ IL_00E1: ldc.i4.0
			/* 0x000023BE 280801000A   */ IL_00E2: call      valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [MaxSea.ControlsLibrary]MaxSea.ControlsLibrary.WindowsFormsExtensions::ShowDialogWithOverlay(class [System.Windows.Forms]System.Windows.Forms.Form, valuetype [MaxSea.ControlsLibrary]MaxSea.ControlsLibrary.CloseBehavior, bool, bool)
			/* 0x000023C3 26           */ IL_00E7: pop
			/* 0x000023C4 16           */ IL_00E8: ldc.i4.0
			/* 0x000023C5 28FA000006   */ IL_00E9: call      void MaxSea.Security.SecureBackupApi::ClearAll(bool)
			/* 0x000023CA 16           */ IL_00EE: ldc.i4.0
			/* 0x000023CB 0C           */ IL_00EF: stloc.2
			/* 0x000023CC DE33         */ IL_00F0: leave.s   IL_0125

			/* 0x000023CE DE20         */ IL_00F2: leave.s   IL_0114
		} // end .try
		catch [mscorlib]System.Exception
		{
			/* 0x000023D0 0D           */ IL_00F4: stloc.3
			/* 0x000023D1 7238090070   */ IL_00F5: ldstr     "Exception:"
			/* 0x000023D6 09           */ IL_00FA: ldloc.3
			/* 0x000023D7 6F0901000A   */ IL_00FB: callvirt  instance string [mscorlib]System.Exception::get_Message()
			/* 0x000023DC 724E090070   */ IL_0100: ldstr     " during launch check at step:"
			/* 0x000023E1 06           */ IL_0105: ldloc.0
			/* 0x000023E2 280A01000A   */ IL_0106: call      string [mscorlib]System.String::Concat(string, string, string, string)
			/* 0x000023E7 280B01000A   */ IL_010B: call      void [MaxSea.Core]MaxSea.Framework.Logger::Error(string)
			/* 0x000023EC 16           */ IL_0110: ldc.i4.0
			/* 0x000023ED 0C           */ IL_0111: stloc.2
			/* 0x000023EE DE11         */ IL_0112: leave.s   IL_0125
		} // end handler

		/* 0x000023F0 02           */ IL_0114: ldarg.0
		/* 0x000023F1 2851000006   */ IL_0115: call      instance bool MaxSea.Security.LicensePolicy::get_IsPresent()
		/* 0x000023F6 2C07         */ IL_011A: brfalse.s IL_0123

		/* 0x000023F8 02           */ IL_011C: ldarg.0
		/* 0x000023F9 2852000006   */ IL_011D: call      instance bool MaxSea.Security.LicensePolicy::get_IsTrustworthy()
		/* 0x000023FE 2A           */ IL_0122: ret

		/* 0x000023FF 16           */ IL_0123: ldc.i4.0
		/* 0x00002400 2A           */ IL_0124: ret

		/* 0x00002401 08           */ IL_0125: ldloc.2
		/* 0x00002402 2A           */ IL_0126: ret
	} // end of method LicensePolicy::CanLaunch

	// Token: 0x06000066 RID: 102 RVA: 0x00004214 File Offset: 0x00002414
	.method public final hidebysig newslot virtual 
		instance void CheckActivationAfterBoot () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 37 (0x25) bytes
		.maxstack 8

		/* 0x00002415 73D6010006   */ IL_0000: newobj    instance void MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'::.ctor()
		/* 0x0000241A 25           */ IL_0005: dup
		/* 0x0000241B 02           */ IL_0006: ldarg.0
		/* 0x0000241C 7DD8000004   */ IL_0007: stfld     class MaxSea.Security.LicensePolicy MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'::'<>4__this'
		/* 0x00002421 25           */ IL_000C: dup
		/* 0x00002422 16           */ IL_000D: ldc.i4.0
		/* 0x00002423 7DD9000004   */ IL_000E: stfld     bool MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'::activationWasTestedOnline
		/* 0x00002428 FE06D7010006 */ IL_0013: ldftn     instance class [mscorlib]System.Threading.Tasks.Task MaxSea.Security.LicensePolicy/'<>c__DisplayClass51_0'::'<CheckActivationAfterBoot>b__0'()
		/* 0x0000242E 738400000A   */ IL_0019: newobj    instance void class [mscorlib]System.Func`1<class [mscorlib]System.Threading.Tasks.Task>::.ctor(object, native int)
		/* 0x00002433 280C01000A   */ IL_001E: call      class [mscorlib]System.Threading.Tasks.Task [mscorlib]System.Threading.Tasks.Task::Run(class [mscorlib]System.Func`1<class [mscorlib]System.Threading.Tasks.Task>)
		/* 0x00002438 26           */ IL_0023: pop
		/* 0x00002439 2A           */ IL_0024: ret
	} // end of method LicensePolicy::CheckActivationAfterBoot

	// Token: 0x06000067 RID: 103 RVA: 0x0000423A File Offset: 0x0000243A
	.method public final hidebysig newslot virtual 
		instance int32 GetOptions () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 13 (0xD) bytes
		.maxstack 8

		/* 0x0000243B 02           */ IL_0000: ldarg.0
		/* 0x0000243C 7B2B000004   */ IL_0001: ldfld     class MaxSea.Security.SECSystem MaxSea.Security.LicensePolicy::_SecSystem
		/* 0x00002441 6FEE000006   */ IL_0006: callvirt  instance int64 MaxSea.Security.SECSystem::GetOptions()
		/* 0x00002446 69           */ IL_000B: conv.i4
		/* 0x00002447 2A           */ IL_000C: ret
	} // end of method LicensePolicy::GetOptions

	// Token: 0x06000068 RID: 104 RVA: 0x00004248 File Offset: 0x00002448
	.method public final hidebysig newslot virtual 
		instance bool Acquire () cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 132 (0x84) bytes
		.maxstack 4

		/* 0x00002454 02           */ IL_0000: ldarg.0
		/* 0x00002455 02           */ IL_0001: ldarg.0
		/* 0x00002456 7B25000004   */ IL_0002: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
		/* 0x0000245B 6F8800000A   */ IL_0007: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
		/* 0x00002460 6F0D01000A   */ IL_000C: callvirt  instance string [MaxSea.Core]MaxSea.Security.PublicIdentity::get_Prefix()
		/* 0x00002465 02           */ IL_0011: ldarg.0
		/* 0x00002466 7B25000004   */ IL_0012: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
		/* 0x0000246B 6F8800000A   */ IL_0017: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
		/* 0x00002470 727A040070   */ IL_001C: ldstr     "N"
		/* 0x00002475 6F8900000A   */ IL_0021: callvirt  instance string [MaxSea.Core]MaxSea.Security.PublicIdentity::ToString(string)
		/* 0x0000247A 730E01000A   */ IL_0026: newobj    instance void [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm::.ctor(string, string)
		/* 0x0000247F 7D29000004   */ IL_002B: stfld     class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm MaxSea.Security.LicensePolicy::_SerialInputForm
		/* 0x00002484 02           */ IL_0030: ldarg.0
		/* 0x00002485 7B29000004   */ IL_0031: ldfld     class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm MaxSea.Security.LicensePolicy::_SerialInputForm
		/* 0x0000248A 02           */ IL_0036: ldarg.0
		/* 0x0000248B FE0671000006 */ IL_0037: ldftn     instance void MaxSea.Security.LicensePolicy::WhenSerialInputFormActivateButtonIsClicked(object, class [mscorlib]System.EventArgs)
		/* 0x00002491 730F01000A   */ IL_003D: newobj    instance void [mscorlib]System.EventHandler::.ctor(object, native int)
		/* 0x00002496 6F1001000A   */ IL_0042: callvirt  instance void [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm::add_ActivateClick(class [mscorlib]System.EventHandler)
		/* 0x0000249B 02           */ IL_0047: ldarg.0
		/* 0x0000249C 7B29000004   */ IL_0048: ldfld     class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm MaxSea.Security.LicensePolicy::_SerialInputForm
		/* 0x000024A1 6F1101000A   */ IL_004D: callvirt  instance valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [System.Windows.Forms]System.Windows.Forms.Form::ShowDialog()
		/* 0x000024A6 17           */ IL_0052: ldc.i4.1
		/* 0x000024A7 330D         */ IL_0053: bne.un.s  IL_0062

		/* 0x000024A9 02           */ IL_0055: ldarg.0
		/* 0x000024AA 7B29000004   */ IL_0056: ldfld     class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm MaxSea.Security.LicensePolicy::_SerialInputForm
		/* 0x000024AF 6F1201000A   */ IL_005B: callvirt  instance void [System]System.ComponentModel.Component::Dispose()
		/* 0x000024B4 17           */ IL_0060: ldc.i4.1
		/* 0x000024B5 2A           */ IL_0061: ret

		/* 0x000024B6 02           */ IL_0062: ldarg.0
		/* 0x000024B7 7B29000004   */ IL_0063: ldfld     class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm MaxSea.Security.LicensePolicy::_SerialInputForm
		/* 0x000024BC 6F1301000A   */ IL_0068: callvirt  instance valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [System.Windows.Forms]System.Windows.Forms.Form::get_DialogResult()
		/* 0x000024C1 1D           */ IL_006D: ldc.i4.7
		/* 0x000024C2 3312         */ IL_006E: bne.un.s  IL_0082

		/* 0x000024C4 02           */ IL_0070: ldarg.0
		/* 0x000024C5 7B29000004   */ IL_0071: ldfld     class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm MaxSea.Security.LicensePolicy::_SerialInputForm
		/* 0x000024CA 6F1201000A   */ IL_0076: callvirt  instance void [System]System.ComponentModel.Component::Dispose()
		/* 0x000024CF 02           */ IL_007B: ldarg.0
		/* 0x000024D0 2876000006   */ IL_007C: call      instance bool MaxSea.Security.LicensePolicy::AskUser()
		/* 0x000024D5 2A           */ IL_0081: ret

		/* 0x000024D6 16           */ IL_0082: ldc.i4.0
		/* 0x000024D7 2A           */ IL_0083: ret
	} // end of method LicensePolicy::Acquire

	// Token: 0x06000069 RID: 105 RVA: 0x000042D8 File Offset: 0x000024D8
	.method public final hidebysig newslot virtual 
		instance bool AskUnlockCodes (
			class [MaxSea.Core]MaxSea.Security.IConfigurationPolicy configuration,
			valuetype [MaxSea.Core]MaxSea.Security.UnlockCodeType unlockCodeType,
			bool isMandatory
		) cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 78 (0x4E) bytes
		// LocalVarSig Token: 0x11000018 RID: 24
		.maxstack 6
		.locals init (
			[0] class [MaxSea.ChartsServer]MaxSea.ChartsServer.IChartCatalogUIApi,
			[1] class [mscorlib]System.Collections.Generic.IList`1<class [MaxSea.Core]MaxSea.Security.UnlockCode>,
			[2] class [MaxSea.SmartDesktop]MaxSea.Security.UI.SecurityAddUnlockCodesToPoolUserForm,
			[3] bool
		)

		/* 0x000024E4 02           */ IL_0000: ldarg.0
		/* 0x000024E5 7B26000004   */ IL_0001: ldfld     class [MaxSea.IOC]MaxSea.IOC.WorkItem MaxSea.Security.LicensePolicy::_RootWorkItem
		/* 0x000024EA 6FEA00000A   */ IL_0006: callvirt  instance class [MaxSea.IOC]MaxSea.IOC.ServiceCollection [MaxSea.IOC]MaxSea.IOC.WorkItem::get_Services()
		/* 0x000024EF 6F2200002B   */ IL_000B: callvirt  instance !!0 [MaxSea.IOC]MaxSea.IOC.ServiceCollection::Get<class [MaxSea.ChartsServer]MaxSea.ChartsServer.IChartCatalogUIApi>()
		/* 0x000024F4 0A           */ IL_0010: stloc.0
		/* 0x000024F5 14           */ IL_0011: ldnull
		/* 0x000024F6 0B           */ IL_0012: stloc.1
		/* 0x000024F7 06           */ IL_0013: ldloc.0
		/* 0x000024F8 2C07         */ IL_0014: brfalse.s IL_001D

		/* 0x000024FA 06           */ IL_0016: ldloc.0
		/* 0x000024FB 6F1401000A   */ IL_0017: callvirt  instance class [mscorlib]System.Collections.Generic.IList`1<class [MaxSea.Core]MaxSea.Security.UnlockCode> [MaxSea.ChartsServer]MaxSea.ChartsServer.IChartCatalogUIApi::GetWellKnownUnlockCodes()
		/* 0x00002500 0B           */ IL_001C: stloc.1

		/* 0x00002501 03           */ IL_001D: ldarg.1
		/* 0x00002502 02           */ IL_001E: ldarg.0
		/* 0x00002503 7B27000004   */ IL_001F: ldfld     class [MaxSea.Core]MaxSea.Security.IUnlockCodesPool MaxSea.Security.LicensePolicy::_UnlockCodesPool
		/* 0x00002508 07           */ IL_0024: ldloc.1
		/* 0x00002509 02           */ IL_0025: ldarg.0
		/* 0x0000250A 7B25000004   */ IL_0026: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
		/* 0x0000250F 04           */ IL_002B: ldarg.2
		/* 0x00002510 05           */ IL_002C: ldarg.3
		/* 0x00002511 731501000A   */ IL_002D: newobj    instance void [MaxSea.SmartDesktop]MaxSea.Security.UI.SecurityAddUnlockCodesToPoolUserForm::.ctor(class [MaxSea.Core]MaxSea.Security.IConfigurationPolicy, class [MaxSea.Core]MaxSea.Security.IUnlockCodesPool, class [mscorlib]System.Collections.Generic.IList`1<class [MaxSea.Core]MaxSea.Security.UnlockCode>, class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy, valuetype [MaxSea.Core]MaxSea.Security.UnlockCodeType, bool)
		/* 0x00002516 0C           */ IL_0032: stloc.2
		.try
		{
			/* 0x00002517 08           */ IL_0033: ldloc.2
			/* 0x00002518 17           */ IL_0034: ldc.i4.1
			/* 0x00002519 17           */ IL_0035: ldc.i4.1
			/* 0x0000251A 16           */ IL_0036: ldc.i4.0
			/* 0x0000251B 280801000A   */ IL_0037: call      valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [MaxSea.ControlsLibrary]MaxSea.ControlsLibrary.WindowsFormsExtensions::ShowDialogWithOverlay(class [System.Windows.Forms]System.Windows.Forms.Form, valuetype [MaxSea.ControlsLibrary]MaxSea.ControlsLibrary.CloseBehavior, bool, bool)
			/* 0x00002520 17           */ IL_003C: ldc.i4.1
			/* 0x00002521 FE01         */ IL_003D: ceq
			/* 0x00002523 0D           */ IL_003F: stloc.3
			/* 0x00002524 DE0A         */ IL_0040: leave.s   IL_004C
		} // end .try
		finally
		{
			/* 0x00002526 08           */ IL_0042: ldloc.2
			/* 0x00002527 2C06         */ IL_0043: brfalse.s IL_004B

			/* 0x00002529 08           */ IL_0045: ldloc.2
			/* 0x0000252A 6F1E00000A   */ IL_0046: callvirt  instance void [mscorlib]System.IDisposable::Dispose()

			/* 0x0000252F DC           */ IL_004B: endfinally
		} // end handler

		/* 0x00002530 09           */ IL_004C: ldloc.3
		/* 0x00002531 2A           */ IL_004D: ret
	} // end of method LicensePolicy::AskUnlockCodes

	// Token: 0x0600006A RID: 106 RVA: 0x00004344 File Offset: 0x00002544
	.method public hidebysig newslot virtual 
		instance bool Move () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 2 (0x2) bytes
		.maxstack 8

		/* 0x00002545 16           */ IL_0000: ldc.i4.0
		/* 0x00002546 2A           */ IL_0001: ret
	} // end of method LicensePolicy::Move

	// Token: 0x0600006B RID: 107 RVA: 0x00004348 File Offset: 0x00002548
	.method public hidebysig newslot virtual 
		instance bool Remove () cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 14 (0xE) bytes
		// LocalVarSig Token: 0x11000019 RID: 25
		.maxstack 1
		.locals init (
			[0] bool
		)

		/* 0x00002554 16           */ IL_0000: ldc.i4.0
		/* 0x00002555 0A           */ IL_0001: stloc.0
		/* 0x00002556 02           */ IL_0002: ldarg.0
		/* 0x00002557 2865000006   */ IL_0003: call      instance bool MaxSea.Security.LicensePolicy::CanLaunch()
		/* 0x0000255C 2C02         */ IL_0008: brfalse.s IL_000C

		/* 0x0000255E 17           */ IL_000A: ldc.i4.1
		/* 0x0000255F 0A           */ IL_000B: stloc.0

		/* 0x00002560 06           */ IL_000C: ldloc.0
		/* 0x00002561 2A           */ IL_000D: ret
	} // end of method LicensePolicy::Remove

	// Token: 0x0600006C RID: 108 RVA: 0x00004362 File Offset: 0x00002562
	.method public hidebysig newslot virtual 
		instance bool Destroy () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 2 (0x2) bytes
		.maxstack 8

		/* 0x00002563 16           */ IL_0000: ldc.i4.0
		/* 0x00002564 2A           */ IL_0001: ret
	} // end of method LicensePolicy::Destroy

	// Token: 0x0600006D RID: 109 RVA: 0x00004365 File Offset: 0x00002565
	.method public final hidebysig newslot virtual 
		instance void ResetStatus () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 36 (0x24) bytes
		.maxstack 8

		/* 0x00002566 02           */ IL_0000: ldarg.0
		/* 0x00002567 17           */ IL_0001: ldc.i4.1
		/* 0x00002568 2856000006   */ IL_0002: call      instance void MaxSea.Security.LicensePolicy::set_CanAcquire(bool)
		/* 0x0000256D 02           */ IL_0007: ldarg.0
		/* 0x0000256E 16           */ IL_0008: ldc.i4.0
		/* 0x0000256F 285C000006   */ IL_0009: call      instance void MaxSea.Security.LicensePolicy::set_CanDestroy(bool)
		/* 0x00002574 02           */ IL_000E: ldarg.0
		/* 0x00002575 16           */ IL_000F: ldc.i4.0
		/* 0x00002576 2858000006   */ IL_0010: call      instance void MaxSea.Security.LicensePolicy::set_CanMove(bool)
		/* 0x0000257B 02           */ IL_0015: ldarg.0
		/* 0x0000257C 16           */ IL_0016: ldc.i4.0
		/* 0x0000257D 285A000006   */ IL_0017: call      instance void MaxSea.Security.LicensePolicy::set_CanRemove(bool)
		/* 0x00002582 02           */ IL_001C: ldarg.0
		/* 0x00002583 16           */ IL_001D: ldc.i4.0
		/* 0x00002584 285E000006   */ IL_001E: call      instance void MaxSea.Security.LicensePolicy::set_Limitation(valuetype [MaxSea.Core]MaxSea.Security.LimitationType)
		/* 0x00002589 2A           */ IL_0023: ret
	} // end of method LicensePolicy::ResetStatus

	// Token: 0x0600006E RID: 110 RVA: 0x0000438A File Offset: 0x0000258A
	.method public final hidebysig newslot virtual 
		instance void Dispose () cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 24 (0x18) bytes
		.maxstack 8

		/* 0x0000258B 02           */ IL_0000: ldarg.0
		/* 0x0000258C 7B29000004   */ IL_0001: ldfld     class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm MaxSea.Security.LicensePolicy::_SerialInputForm
		/* 0x00002591 25           */ IL_0006: dup
		/* 0x00002592 2D03         */ IL_0007: brtrue.s  IL_000C

		/* 0x00002594 26           */ IL_0009: pop
		/* 0x00002595 2B05         */ IL_000A: br.s      IL_0011

		/* 0x00002597 281201000A   */ IL_000C: call      instance void [System]System.ComponentModel.Component::Dispose()

		/* 0x0000259C 02           */ IL_0011: ldarg.0
		/* 0x0000259D 281601000A   */ IL_0012: call      void [mscorlib]System.GC::SuppressFinalize(object)
		/* 0x000025A2 2A           */ IL_0017: ret
	} // end of method LicensePolicy::Dispose

	// Token: 0x0600006F RID: 111 RVA: 0x000043A4 File Offset: 0x000025A4
	.method private hidebysig 
		instance void ExitWithMessage (
			string msg,
			string title
		) cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 41 (0x29) bytes
		.maxstack 9

		/* 0x000025B0 14           */ IL_0000: ldnull
		/* 0x000025B1 03           */ IL_0001: ldarg.1
		/* 0x000025B2 04           */ IL_0002: ldarg.2
		/* 0x000025B3 1F10         */ IL_0003: ldc.i4.s  16
		/* 0x000025B5 16           */ IL_0005: ldc.i4.0
		/* 0x000025B6 16           */ IL_0006: ldc.i4.0
		/* 0x000025B7 7E0601000A   */ IL_0007: ldsfld    valuetype [MaxSea.Toolkit.Pcl]MaxSea.AtomicTypes.Data.Duration [MaxSea.Toolkit.Pcl]MaxSea.AtomicTypes.Data.Duration::Empty
		/* 0x000025BC 17           */ IL_000C: ldc.i4.1
		/* 0x000025BD 14           */ IL_000D: ldnull
		/* 0x000025BE 730701000A   */ IL_000E: newobj    instance void [MaxSea.ControlsLibrary]MaxSea.ControlsLibrary.MxMessageBox::.ctor(class [System.Windows.Forms]System.Windows.Forms.IWin32Window, string, string, valuetype [System.Windows.Forms]System.Windows.Forms.MessageBoxIcon, valuetype [System.Windows.Forms]System.Windows.Forms.MessageBoxButtons, valuetype [System.Windows.Forms]System.Windows.Forms.MessageBoxDefaultButton, valuetype [MaxSea.Toolkit.Pcl]MaxSea.AtomicTypes.Data.Duration, bool, class [mscorlib]System.Collections.Generic.List`1<string>)
		/* 0x000025C3 17           */ IL_0013: ldc.i4.1
		/* 0x000025C4 17           */ IL_0014: ldc.i4.1
		/* 0x000025C5 16           */ IL_0015: ldc.i4.0
		/* 0x000025C6 280801000A   */ IL_0016: call      valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [MaxSea.ControlsLibrary]MaxSea.ControlsLibrary.WindowsFormsExtensions::ShowDialogWithOverlay(class [System.Windows.Forms]System.Windows.Forms.Form, valuetype [MaxSea.ControlsLibrary]MaxSea.ControlsLibrary.CloseBehavior, bool, bool)
		/* 0x000025CB 26           */ IL_001B: pop
		/* 0x000025CC 16           */ IL_001C: ldc.i4.0
		/* 0x000025CD 28FA000006   */ IL_001D: call      void MaxSea.Security.SecureBackupApi::ClearAll(bool)
		/* 0x000025D2 14           */ IL_0022: ldnull
		/* 0x000025D3 281701000A   */ IL_0023: call      void [mscorlib]System.Environment::FailFast(string)
		/* 0x000025D8 2A           */ IL_0028: ret
	} // end of method LicensePolicy::ExitWithMessage

	// Token: 0x06000070 RID: 112 RVA: 0x000043D9 File Offset: 0x000025D9
	.method private hidebysig 
		instance void ClearInvalidLicenseAndExit (
			string errorLog
		) cil managed 
	{
		// Header Size: 1 byte
		// Code Size: 19 (0x13) bytes
		.maxstack 8

		/* 0x000025DA 03           */ IL_0000: ldarg.1
		/* 0x000025DB 280B01000A   */ IL_0001: call      void [MaxSea.Core]MaxSea.Framework.Logger::Error(string)
		/* 0x000025E0 17           */ IL_0006: ldc.i4.1
		/* 0x000025E1 28FA000006   */ IL_0007: call      void MaxSea.Security.SecureBackupApi::ClearAll(bool)
		/* 0x000025E6 14           */ IL_000C: ldnull
		/* 0x000025E7 281701000A   */ IL_000D: call      void [mscorlib]System.Environment::FailFast(string)
		/* 0x000025EC 2A           */ IL_0012: ret
	} // end of method LicensePolicy::ClearInvalidLicenseAndExit

	// Token: 0x06000071 RID: 113 RVA: 0x000043F0 File Offset: 0x000025F0
	.method private hidebysig 
		instance void WhenSerialInputFormActivateButtonIsClicked (
			object sender,
			class [mscorlib]System.EventArgs e
		) cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 62 (0x3E) bytes
		// LocalVarSig Token: 0x1100001A RID: 26
		.maxstack 3
		.locals init (
			[0] class [MaxSea.Core]MaxSea.Security.PublicIdentity
		)

		/* 0x000025FC 02           */ IL_0000: ldarg.0
		/* 0x000025FD 7B29000004   */ IL_0001: ldfld     class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm MaxSea.Security.LicensePolicy::_SerialInputForm
		/* 0x00002602 02           */ IL_0006: ldarg.0
		/* 0x00002603 FE0671000006 */ IL_0007: ldftn     instance void MaxSea.Security.LicensePolicy::WhenSerialInputFormActivateButtonIsClicked(object, class [mscorlib]System.EventArgs)
		/* 0x00002609 730F01000A   */ IL_000D: newobj    instance void [mscorlib]System.EventHandler::.ctor(object, native int)
		/* 0x0000260E 6F1801000A   */ IL_0012: callvirt  instance void [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm::remove_ActivateClick(class [mscorlib]System.EventHandler)
		/* 0x00002613 02           */ IL_0017: ldarg.0
		/* 0x00002614 7B29000004   */ IL_0018: ldfld     class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm MaxSea.Security.LicensePolicy::_SerialInputForm
		/* 0x00002619 6F1901000A   */ IL_001D: callvirt  instance string [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm::get_SerialNumber()
		/* 0x0000261E 1200         */ IL_0022: ldloca.s  V_0
		/* 0x00002620 281A01000A   */ IL_0024: call      bool [MaxSea.Core]MaxSea.Security.PublicIdentity::TryParse(string, class [MaxSea.Core]MaxSea.Security.PublicIdentity&)
		/* 0x00002625 2C0C         */ IL_0029: brfalse.s IL_0037

		/* 0x00002627 02           */ IL_002B: ldarg.0
		/* 0x00002628 7B25000004   */ IL_002C: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
		/* 0x0000262D 06           */ IL_0031: ldloc.0
		/* 0x0000262E 6F1B01000A   */ IL_0032: callvirt  instance void [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::SaveIdentity(class [MaxSea.Core]MaxSea.Security.PublicIdentity)

		/* 0x00002633 02           */ IL_0037: ldarg.0
		/* 0x00002634 2872000006   */ IL_0038: call      instance void MaxSea.Security.LicensePolicy::AskServer()
		/* 0x00002639 2A           */ IL_003D: ret
	} // end of method LicensePolicy::WhenSerialInputFormActivateButtonIsClicked

	// Token: 0x06000072 RID: 114 RVA: 0x0000443C File Offset: 0x0000263C
	.method private hidebysig 
		instance void AskServer () cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 68 (0x44) bytes
		// LocalVarSig Token: 0x1100001B RID: 27
		.maxstack 3
		.locals init (
			[0] class [System]System.ComponentModel.BackgroundWorker
		)

		/* 0x00002648 731C01000A   */ IL_0000: newobj    instance void [System]System.ComponentModel.BackgroundWorker::.ctor()
		/* 0x0000264D 0A           */ IL_0005: stloc.0
		.try
		{
			/* 0x0000264E 06           */ IL_0006: ldloc.0
			/* 0x0000264F 17           */ IL_0007: ldc.i4.1
			/* 0x00002650 6F1D01000A   */ IL_0008: callvirt  instance void [System]System.ComponentModel.BackgroundWorker::set_WorkerReportsProgress(bool)
			/* 0x00002655 06           */ IL_000D: ldloc.0
			/* 0x00002656 02           */ IL_000E: ldarg.0
			/* 0x00002657 FE0674000006 */ IL_000F: ldftn     instance void MaxSea.Security.LicensePolicy::BackgroundWorker_DoWork(object, class [System]System.ComponentModel.DoWorkEventArgs)
			/* 0x0000265D 731E01000A   */ IL_0015: newobj    instance void [System]System.ComponentModel.DoWorkEventHandler::.ctor(object, native int)
			/* 0x00002662 6F1F01000A   */ IL_001A: callvirt  instance void [System]System.ComponentModel.BackgroundWorker::add_DoWork(class [System]System.ComponentModel.DoWorkEventHandler)
			/* 0x00002667 06           */ IL_001F: ldloc.0
			/* 0x00002668 02           */ IL_0020: ldarg.0
			/* 0x00002669 FE0675000006 */ IL_0021: ldftn     instance void MaxSea.Security.LicensePolicy::WhenActivationResultIsKnown(object, class [System]System.ComponentModel.ProgressChangedEventArgs)
			/* 0x0000266F 732001000A   */ IL_0027: newobj    instance void [System]System.ComponentModel.ProgressChangedEventHandler::.ctor(object, native int)
			/* 0x00002674 6F2101000A   */ IL_002C: callvirt  instance void [System]System.ComponentModel.BackgroundWorker::add_ProgressChanged(class [System]System.ComponentModel.ProgressChangedEventHandler)
			/* 0x00002679 06           */ IL_0031: ldloc.0
			/* 0x0000267A 6F2201000A   */ IL_0032: callvirt  instance void [System]System.ComponentModel.BackgroundWorker::RunWorkerAsync()
			/* 0x0000267F DE0A         */ IL_0037: leave.s   IL_0043
		} // end .try
		finally
		{
			/* 0x00002681 06           */ IL_0039: ldloc.0
			/* 0x00002682 2C06         */ IL_003A: brfalse.s IL_0042

			/* 0x00002684 06           */ IL_003C: ldloc.0
			/* 0x00002685 6F1E00000A   */ IL_003D: callvirt  instance void [mscorlib]System.IDisposable::Dispose()

			/* 0x0000268A DC           */ IL_0042: endfinally
		} // end handler

		/* 0x0000268B 2A           */ IL_0043: ret
	} // end of method LicensePolicy::AskServer

	// Token: 0x06000073 RID: 115 RVA: 0x0000449C File Offset: 0x0000269C
	.method private hidebysig 
		instance class MaxSea.Security.LicensePolicy/ActivationOutcome CheckActivationOnline () cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 193 (0xC1) bytes
		// LocalVarSig Token: 0x1100001C RID: 28
		.maxstack 5
		.locals init (
			[0] class MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0',
			[1] string,
			[2] string,
			[3] class MaxSea.Security.LicensePolicy/ActivationOutcome,
			[4] class [mscorlib]System.Exception
		)

		/* 0x000026A8 73D8010006   */ IL_0000: newobj    instance void MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::.ctor()
		/* 0x000026AD 0A           */ IL_0005: stloc.0
		/* 0x000026AE 06           */ IL_0006: ldloc.0
		/* 0x000026AF 02           */ IL_0007: ldarg.0
		/* 0x000026B0 7DDB000004   */ IL_0008: stfld     class MaxSea.Security.LicensePolicy MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::'<>4__this'
		/* 0x000026B5 06           */ IL_000D: ldloc.0
		/* 0x000026B6 282301000A   */ IL_000E: call      class [MaxSea.Framework]MaxSea.Framework.FrameworkApplicationData [MaxSea.Framework]MaxSea.Framework.FrameworkApplicationData::get_Instance()
		/* 0x000026BB 6F2401000A   */ IL_0013: callvirt  instance string [MaxSea.Framework]MaxSea.Framework.FrameworkApplicationData::get_ExtranetUriForLicenseAndSubscriptions()
		/* 0x000026C0 728A090070   */ IL_0018: ldstr     "/api/licensetoken"
		/* 0x000026C5 28BF00000A   */ IL_001D: call      string [mscorlib]System.String::Concat(string, string)
		/* 0x000026CA 732501000A   */ IL_0022: newobj    instance void [System]System.Uri::.ctor(string)
		/* 0x000026CF 7DDA000004   */ IL_0027: stfld     class [System]System.Uri MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::activationUrl
		/* 0x000026D4 06           */ IL_002C: ldloc.0
		/* 0x000026D5 02           */ IL_002D: ldarg.0
		/* 0x000026D6 7B2B000004   */ IL_002E: ldfld     class MaxSea.Security.SECSystem MaxSea.Security.LicensePolicy::_SecSystem
		/* 0x000026DB 6FF2000006   */ IL_0033: callvirt  instance string MaxSea.Security.SECSystem::ReadOrCreateSiteCode()
		/* 0x000026E0 7DDC000004   */ IL_0038: stfld     string MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::siteCode
		/* 0x000026E5 06           */ IL_003D: ldloc.0
		/* 0x000026E6 72AE090070   */ IL_003E: ldstr     "auto"
		/* 0x000026EB 7DDD000004   */ IL_0043: stfld     string MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::mode
		/* 0x000026F0 284300000A   */ IL_0048: call      string [mscorlib]System.Environment::get_MachineName()
		/* 0x000026F5 6F3A00000A   */ IL_004D: callvirt  instance string [mscorlib]System.Object::ToString()
		/* 0x000026FA 0B           */ IL_0052: stloc.1
		/* 0x000026FB 282601000A   */ IL_0053: call      string [mscorlib]System.Environment::get_UserName()
		/* 0x00002700 6F3A00000A   */ IL_0058: callvirt  instance string [mscorlib]System.Object::ToString()
		/* 0x00002705 0C           */ IL_005D: stloc.2
		/* 0x00002706 06           */ IL_005E: ldloc.0
		/* 0x00002707 282701000A   */ IL_005F: call      class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
		/* 0x0000270C 07           */ IL_0064: ldloc.1
		/* 0x0000270D 6F2801000A   */ IL_0065: callvirt  instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
		/* 0x00002712 282901000A   */ IL_006A: call      string [mscorlib]System.Convert::ToBase64String(uint8[])
		/* 0x00002717 72B8090070   */ IL_006F: ldstr     ","
		/* 0x0000271C 282701000A   */ IL_0074: call      class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
		/* 0x00002721 08           */ IL_0079: ldloc.2
		/* 0x00002722 6F2801000A   */ IL_007A: callvirt  instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
		/* 0x00002727 282901000A   */ IL_007F: call      string [mscorlib]System.Convert::ToBase64String(uint8[])
		/* 0x0000272C 283B00000A   */ IL_0084: call      string [mscorlib]System.String::Concat(string, string, string)
		/* 0x00002731 7DDE000004   */ IL_0089: stfld     string MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::computerInformation
		/* 0x00002736 14           */ IL_008E: ldnull
		/* 0x00002737 0D           */ IL_008F: stloc.3
		.try
		{
			/* 0x00002738 06           */ IL_0090: ldloc.0
			/* 0x00002739 FE06D9010006 */ IL_0091: ldftn     instance class [mscorlib]System.Threading.Tasks.Task`1<class MaxSea.Security.LicensePolicy/ActivationOutcome> MaxSea.Security.LicensePolicy/'<>c__DisplayClass64_0'::'<CheckActivationOnline>b__0'()
			/* 0x0000273F 732A01000A   */ IL_0097: newobj    instance void class [mscorlib]System.Func`1<class [mscorlib]System.Threading.Tasks.Task`1<class MaxSea.Security.LicensePolicy/ActivationOutcome>>::.ctor(object, native int)
			/* 0x00002744 282300002B   */ IL_009C: call      !!0 [MaxSea.Core]MaxSea.Core.TaskAndThreadExtensions::RunSync<class MaxSea.Security.LicensePolicy/ActivationOutcome>(class [mscorlib]System.Func`1<class [mscorlib]System.Threading.Tasks.Task`1<!!0>>)
			/* 0x00002749 0D           */ IL_00A1: stloc.3
			/* 0x0000274A DE1B         */ IL_00A2: leave.s   IL_00BF
		} // end .try
		catch [mscorlib]System.Exception
		{
			/* 0x0000274C 1304         */ IL_00A4: stloc.s   V_4
			/* 0x0000274E 02           */ IL_00A6: ldarg.0
			/* 0x0000274F 20BB63FFFF   */ IL_00A7: ldc.i4    -40005
			/* 0x00002754 7D2A000004   */ IL_00AC: stfld     int32 MaxSea.Security.LicensePolicy::_ErrorCode
			/* 0x00002759 72BC090070   */ IL_00B1: ldstr     "Cannot reach activation server."
			/* 0x0000275E 1104         */ IL_00B6: ldloc.s   V_4
			/* 0x00002760 282C01000A   */ IL_00B8: call      void [MaxSea.Core]MaxSea.Framework.Logger::Error(string, class [mscorlib]System.Exception)
			/* 0x00002765 DE00         */ IL_00BD: leave.s   IL_00BF
		} // end handler

		/* 0x00002767 09           */ IL_00BF: ldloc.3
		/* 0x00002768 2A           */ IL_00C0: ret
	} // end of method LicensePolicy::CheckActivationOnline

	// Token: 0x06000074 RID: 116 RVA: 0x0000457C File Offset: 0x0000277C
	.method private hidebysig 
		instance void BackgroundWorker_DoWork (
			object sender,
			class [System]System.ComponentModel.DoWorkEventArgs e
		) cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 326 (0x146) bytes
		// LocalVarSig Token: 0x1100001D RID: 29
		.maxstack 4
		.locals init (
			[0] class MaxSea.Security.LicensePolicy/ActivationOutcome,
			[1] valuetype MaxSea.Security.LicensePolicy/ActivationResult,
			[2] string,
			[3] valuetype MaxSea.Security.ActivationCodeValidationStatus,
			[4] uint16,
			[5] class [mscorlib]System.Exception
		)

		.try
		{
			.try
			{
				/* 0x00002788 02           */ IL_0000: ldarg.0
				/* 0x00002789 2873000006   */ IL_0001: call      instance class MaxSea.Security.LicensePolicy/ActivationOutcome MaxSea.Security.LicensePolicy::CheckActivationOnline()
				/* 0x0000278E 0A           */ IL_0006: stloc.0
				/* 0x0000278F 06           */ IL_0007: ldloc.0
				/* 0x00002790 2C37         */ IL_0008: brfalse.s IL_0041

				/* 0x00002792 06           */ IL_000A: ldloc.0
				/* 0x00002793 6FCC010006   */ IL_000B: callvirt  instance valuetype MaxSea.Security.LicensePolicy/ActivationResult MaxSea.Security.LicensePolicy/ActivationOutcome::get_ActivationResult()
				/* 0x00002798 20EBD8FFFF   */ IL_0010: ldc.i4    -10005
				/* 0x0000279D 332A         */ IL_0015: bne.un.s  IL_0041

				/* 0x0000279F 02           */ IL_0017: ldarg.0
				/* 0x000027A0 72FC090070   */ IL_0018: ldstr     "License "
				/* 0x000027A5 02           */ IL_001D: ldarg.0
				/* 0x000027A6 7B25000004   */ IL_001E: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
				/* 0x000027AB 6F8800000A   */ IL_0023: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
				/* 0x000027B0 727A040070   */ IL_0028: ldstr     "N"
				/* 0x000027B5 6F8900000A   */ IL_002D: callvirt  instance string [MaxSea.Core]MaxSea.Security.PublicIdentity::ToString(string)
				/* 0x000027BA 720E0A0070   */ IL_0032: ldstr     " automatically removed due to an activation already removed."
				/* 0x000027BF 283B00000A   */ IL_0037: call      string [mscorlib]System.String::Concat(string, string, string)
				/* 0x000027C4 2870000006   */ IL_003C: call      instance void MaxSea.Security.LicensePolicy::ClearInvalidLicenseAndExit(string)

				/* 0x000027C9 06           */ IL_0041: ldloc.0
				/* 0x000027CA 2D05         */ IL_0042: brtrue.s  IL_0049

				/* 0x000027CC DDFC000000   */ IL_0044: leave     IL_0145

				/* 0x000027D1 06           */ IL_0049: ldloc.0
				/* 0x000027D2 6FCC010006   */ IL_004A: callvirt  instance valuetype MaxSea.Security.LicensePolicy/ActivationResult MaxSea.Security.LicensePolicy/ActivationOutcome::get_ActivationResult()
				/* 0x000027D7 0B           */ IL_004F: stloc.1
				/* 0x000027D8 07           */ IL_0050: ldloc.1
				/* 0x000027D9 20EBD8FFFF   */ IL_0051: ldc.i4    -10005
				/* 0x000027DE 301D         */ IL_0056: bgt.s     IL_0075

				/* 0x000027E0 07           */ IL_0058: ldloc.1
				/* 0x000027E1 20B3D8FFFF   */ IL_0059: ldc.i4    -10061
				/* 0x000027E6 3B9E000000   */ IL_005E: beq       IL_0101

				/* 0x000027EB 07           */ IL_0063: ldloc.1
				/* 0x000027EC 20EAD8FFFF   */ IL_0064: ldc.i4    -10006
				/* 0x000027F1 59           */ IL_0069: sub
				/* 0x000027F2 17           */ IL_006A: ldc.i4.1
				/* 0x000027F3 4391000000   */ IL_006B: ble.un    IL_0101

				/* 0x000027F8 389A000000   */ IL_0070: br        IL_010F

				/* 0x000027FD 07           */ IL_0075: ldloc.1
				/* 0x000027FE 20EDD8FFFF   */ IL_0076: ldc.i4    -10003
				/* 0x00002803 3B81000000   */ IL_007B: beq       IL_0101

				/* 0x00002808 07           */ IL_0080: ldloc.1
				/* 0x00002809 15           */ IL_0081: ldc.i4.m1
				/* 0x0000280A 59           */ IL_0082: sub
				/* 0x0000280B 450400000069000000020000006900000069000000 */ IL_0083: switch    (IL_0101, IL_009A, IL_0101, IL_0101)

				/* 0x00002820 2B75         */ IL_0098: br.s      IL_010F

				/* 0x00002822 06           */ IL_009A: ldloc.0
				/* 0x00002823 6FCE010006   */ IL_009B: callvirt  instance string MaxSea.Security.LicensePolicy/ActivationOutcome::get_ActivationCode()
				/* 0x00002828 72CA030070   */ IL_00A0: ldstr     " "
				/* 0x0000282D 72880A0070   */ IL_00A5: ldstr     ""
				/* 0x00002832 6F3D00000A   */ IL_00AA: callvirt  instance string [mscorlib]System.String::Replace(string, string)
				/* 0x00002837 0C           */ IL_00AF: stloc.2
				/* 0x00002838 02           */ IL_00B0: ldarg.0
				/* 0x00002839 7B2B000004   */ IL_00B1: ldfld     class MaxSea.Security.SECSystem MaxSea.Security.LicensePolicy::_SecSystem
				/* 0x0000283E 08           */ IL_00B6: ldloc.2
				/* 0x0000283F 1204         */ IL_00B7: ldloca.s  V_4
				/* 0x00002841 6FF1000006   */ IL_00B9: callvirt  instance valuetype MaxSea.Security.ActivationCodeValidationStatus MaxSea.Security.SECSystem::CheckActivationCode(string, uint16&)
				/* 0x00002846 0D           */ IL_00BE: stloc.3
				/* 0x00002847 09           */ IL_00BF: ldloc.3
				/* 0x00002848 2D36         */ IL_00C0: brtrue.s  IL_00F8

				/* 0x0000284A 728A0A0070   */ IL_00C2: ldstr     "activationcode.lic"
				/* 0x0000284F 08           */ IL_00C7: ldloc.2
				/* 0x00002850 28F9000006   */ IL_00C8: call      void MaxSea.Security.SecureBackupApi::SetValue(string, string)
				/* 0x00002855 72FC090070   */ IL_00CD: ldstr     "License "
				/* 0x0000285A 02           */ IL_00D2: ldarg.0
				/* 0x0000285B 7B25000004   */ IL_00D3: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
				/* 0x00002860 6F8800000A   */ IL_00D8: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
				/* 0x00002865 727A040070   */ IL_00DD: ldstr     "N"
				/* 0x0000286A 6F8900000A   */ IL_00E2: callvirt  instance string [MaxSea.Core]MaxSea.Security.PublicIdentity::ToString(string)
				/* 0x0000286F 72B00A0070   */ IL_00E7: ldstr     " automatically activated"
				/* 0x00002874 283B00000A   */ IL_00EC: call      string [mscorlib]System.String::Concat(string, string, string)
				/* 0x00002879 282D01000A   */ IL_00F1: call      void [MaxSea.Core]MaxSea.Framework.Logger::Information(string)
				/* 0x0000287E 2B22         */ IL_00F6: br.s      IL_011A

				/* 0x00002880 02           */ IL_00F8: ldarg.0
				/* 0x00002881 09           */ IL_00F9: ldloc.3
				/* 0x00002882 7D2A000004   */ IL_00FA: stfld     int32 MaxSea.Security.LicensePolicy::_ErrorCode
				/* 0x00002887 2B19         */ IL_00FF: br.s      IL_011A

				/* 0x00002889 02           */ IL_0101: ldarg.0
				/* 0x0000288A 06           */ IL_0102: ldloc.0
				/* 0x0000288B 6FCC010006   */ IL_0103: callvirt  instance valuetype MaxSea.Security.LicensePolicy/ActivationResult MaxSea.Security.LicensePolicy/ActivationOutcome::get_ActivationResult()
				/* 0x00002890 7D2A000004   */ IL_0108: stfld     int32 MaxSea.Security.LicensePolicy::_ErrorCode
				/* 0x00002895 2B0B         */ IL_010D: br.s      IL_011A

				/* 0x00002897 72E20A0070   */ IL_010F: ldstr     "Automatic activation Not supported."
				/* 0x0000289C 732E01000A   */ IL_0114: newobj    instance void [mscorlib]System.InvalidOperationException::.ctor(string)
				/* 0x000028A1 7A           */ IL_0119: throw

				/* 0x000028A2 DE29         */ IL_011A: leave.s   IL_0145
			} // end .try
			catch [mscorlib]System.Exception
			{
				/* 0x000028A4 1305         */ IL_011C: stloc.s   V_5
				/* 0x000028A6 02           */ IL_011E: ldarg.0
				/* 0x000028A7 20BB63FFFF   */ IL_011F: ldc.i4    -40005
				/* 0x000028AC 7D2A000004   */ IL_0124: stfld     int32 MaxSea.Security.LicensePolicy::_ErrorCode
				/* 0x000028B1 722A0B0070   */ IL_0129: ldstr     "Automatic activation exception. "
				/* 0x000028B6 1105         */ IL_012E: ldloc.s   V_5
				/* 0x000028B8 282C01000A   */ IL_0130: call      void [MaxSea.Core]MaxSea.Framework.Logger::Error(string, class [mscorlib]System.Exception)
				/* 0x000028BD DE0E         */ IL_0135: leave.s   IL_0145
			} // end handler
		} // end .try
		finally
		{
			/* 0x000028BF 03           */ IL_0137: ldarg.1
			/* 0x000028C0 745D000001   */ IL_0138: castclass [System]System.ComponentModel.BackgroundWorker
			/* 0x000028C5 1F64         */ IL_013D: ldc.i4.s  100
			/* 0x000028C7 6F2F01000A   */ IL_013F: callvirt  instance void [System]System.ComponentModel.BackgroundWorker::ReportProgress(int32)
			/* 0x000028CC DC           */ IL_0144: endfinally
		} // end handler

		/* 0x000028CD 2A           */ IL_0145: ret
	} // end of method LicensePolicy::BackgroundWorker_DoWork

	// Token: 0x06000075 RID: 117 RVA: 0x00004704 File Offset: 0x00002904
	.method private hidebysig 
		instance void WhenActivationResultIsKnown (
			object sender,
			class [System]System.ComponentModel.ProgressChangedEventArgs e
		) cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 76 (0x4C) bytes
		// LocalVarSig Token: 0x1100001E RID: 30
		.maxstack 3
		.locals init (
			[0] bool,
			[1] uint16
		)

		/* 0x00002910 16           */ IL_0000: ldc.i4.0
		/* 0x00002911 0A           */ IL_0001: stloc.0
		/* 0x00002912 728A0A0070   */ IL_0002: ldstr     "activationcode.lic"
		/* 0x00002917 28F8000006   */ IL_0007: call      string MaxSea.Security.SecureBackupApi::GetValue(string)
		/* 0x0000291C 283C00000A   */ IL_000C: call      bool [mscorlib]System.String::IsNullOrEmpty(string)
		/* 0x00002921 2D1B         */ IL_0011: brtrue.s  IL_002E

		/* 0x00002923 02           */ IL_0013: ldarg.0
		/* 0x00002924 7B2B000004   */ IL_0014: ldfld     class MaxSea.Security.SECSystem MaxSea.Security.LicensePolicy::_SecSystem
		/* 0x00002929 728A0A0070   */ IL_0019: ldstr     "activationcode.lic"
		/* 0x0000292E 28F8000006   */ IL_001E: call      string MaxSea.Security.SecureBackupApi::GetValue(string)
		/* 0x00002933 1201         */ IL_0023: ldloca.s  V_1
		/* 0x00002935 6FF1000006   */ IL_0025: callvirt  instance valuetype MaxSea.Security.ActivationCodeValidationStatus MaxSea.Security.SECSystem::CheckActivationCode(string, uint16&)
		/* 0x0000293A 16           */ IL_002A: ldc.i4.0
		/* 0x0000293B FE01         */ IL_002B: ceq
		/* 0x0000293D 0A           */ IL_002D: stloc.0

		/* 0x0000293E 02           */ IL_002E: ldarg.0
		/* 0x0000293F 7B29000004   */ IL_002F: ldfld     class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm MaxSea.Security.LicensePolicy::_SerialInputForm
		/* 0x00002944 06           */ IL_0034: ldloc.0
		/* 0x00002945 2D03         */ IL_0035: brtrue.s  IL_003A

		/* 0x00002947 1D           */ IL_0037: ldc.i4.7
		/* 0x00002948 2B01         */ IL_0038: br.s      IL_003B

		/* 0x0000294A 17           */ IL_003A: ldc.i4.1

		/* 0x0000294B 6F3001000A   */ IL_003B: callvirt  instance void [System.Windows.Forms]System.Windows.Forms.Form::set_DialogResult(valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult)
		/* 0x00002950 02           */ IL_0040: ldarg.0
		/* 0x00002951 7B29000004   */ IL_0041: ldfld     class [MaxSea.SmartDesktop]MaxSea.Security.UI.SerialNumberInputForm MaxSea.Security.LicensePolicy::_SerialInputForm
		/* 0x00002956 6F3101000A   */ IL_0046: callvirt  instance void [System.Windows.Forms]System.Windows.Forms.Form::Close()
		/* 0x0000295B 2A           */ IL_004B: ret
	} // end of method LicensePolicy::WhenActivationResultIsKnown

	// Token: 0x06000076 RID: 118 RVA: 0x0000475C File Offset: 0x0000295C
	.method private hidebysig 
		instance bool AskUser () cil managed 
	{
		// Header Size: 12 bytes
		// Code Size: 603 (0x25B) bytes
		// LocalVarSig Token: 0x1100001F RID: 31
		.maxstack 5
		.locals init (
			[0] string,
			[1] string,
			[2] int32,
			[3] class [MaxSea.SmartDesktop]MaxSea.Security.UI.SecurityManualActivationInputForm,
			[4] string,
			[5] valuetype MaxSea.Security.ActivationCodeValidationStatus,
			[6] uint16,
			[7] bool
		)

		/* 0x00002968 7EB200000A   */ IL_0000: ldsfld    string [mscorlib]System.String::Empty
		/* 0x0000296D 0A           */ IL_0005: stloc.0
		/* 0x0000296E 02           */ IL_0006: ldarg.0
		/* 0x0000296F 7B2A000004   */ IL_0007: ldfld     int32 MaxSea.Security.LicensePolicy::_ErrorCode
		/* 0x00002974 0C           */ IL_000C: stloc.2
		/* 0x00002975 08           */ IL_000D: ldloc.2
		/* 0x00002976 20B3D8FFFF   */ IL_000E: ldc.i4    -10061
		/* 0x0000297B 3018         */ IL_0013: bgt.s     IL_002D

		/* 0x0000297D 08           */ IL_0015: ldloc.2
		/* 0x0000297E 20BB63FFFF   */ IL_0016: ldc.i4    -40005
		/* 0x00002983 2E65         */ IL_001B: beq.s     IL_0082

		/* 0x00002985 08           */ IL_001D: ldloc.2
		/* 0x00002986 20B3D8FFFF   */ IL_001E: ldc.i4    -10061
		/* 0x0000298B 3B18010000   */ IL_0023: beq       IL_0140

		/* 0x00002990 3825010000   */ IL_0028: br        IL_0152

		/* 0x00002995 08           */ IL_002D: ldloc.2
		/* 0x00002996 20EAD8FFFF   */ IL_002E: ldc.i4    -10006
		/* 0x0000299B 59           */ IL_0033: sub
		/* 0x0000299C 45040000009F000000B1000000DD000000E5000000 */ IL_0034: switch    (IL_00E8, IL_00FA, IL_0126, IL_012E)

		/* 0x000029B1 08           */ IL_0049: ldloc.2
		/* 0x000029B2 15           */ IL_004A: ldc.i4.m1
		/* 0x000029B3 59           */ IL_004B: sub
		/* 0x000029B4 450B00000010000000D50000001B0000002600000055000000D5000000D5000000D500000060000000D500000060000000 */ IL_004C: switch    (IL_008D, IL_0152, IL_0098, IL_00A3, IL_00D2, IL_0152, IL_0152, IL_0152, IL_00DD, IL_0152, IL_00DD)

		/* 0x000029E5 38D0000000   */ IL_007D: br        IL_0152

		/* 0x000029EA 283201000A   */ IL_0082: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorNoInternet()
		/* 0x000029EF 0A           */ IL_0087: stloc.0
		/* 0x000029F0 38E0000000   */ IL_0088: br        IL_016D

		/* 0x000029F5 283301000A   */ IL_008D: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorInvalidParameters()
		/* 0x000029FA 0A           */ IL_0092: stloc.0
		/* 0x000029FB 38D5000000   */ IL_0093: br        IL_016D

		/* 0x00002A00 283401000A   */ IL_0098: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorSiteCodeBadFormat()
		/* 0x00002A05 0A           */ IL_009D: stloc.0
		/* 0x00002A06 38CA000000   */ IL_009E: br        IL_016D

		/* 0x00002A0B 02           */ IL_00A3: ldarg.0
		/* 0x00002A0C 72FC090070   */ IL_00A4: ldstr     "License "
		/* 0x00002A11 02           */ IL_00A9: ldarg.0
		/* 0x00002A12 7B25000004   */ IL_00AA: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
		/* 0x00002A17 6F8800000A   */ IL_00AF: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
		/* 0x00002A1C 727A040070   */ IL_00B4: ldstr     "N"
		/* 0x00002A21 6F8900000A   */ IL_00B9: callvirt  instance string [MaxSea.Core]MaxSea.Security.PublicIdentity::ToString(string)
		/* 0x00002A26 726C0B0070   */ IL_00BE: ldstr     " automatically removed due to incorrect license status"
		/* 0x00002A2B 283B00000A   */ IL_00C3: call      string [mscorlib]System.String::Concat(string, string, string)
		/* 0x00002A30 2870000006   */ IL_00C8: call      instance void MaxSea.Security.LicensePolicy::ClearInvalidLicenseAndExit(string)
		/* 0x00002A35 389B000000   */ IL_00CD: br        IL_016D

		/* 0x00002A3A 283501000A   */ IL_00D2: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorBadActivationCodeFormat()
		/* 0x00002A3F 0A           */ IL_00D7: stloc.0
		/* 0x00002A40 3890000000   */ IL_00D8: br        IL_016D

		/* 0x00002A45 283601000A   */ IL_00DD: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorActivationCodeDoesNotMatchSiteCode()
		/* 0x00002A4A 0A           */ IL_00E2: stloc.0
		/* 0x00002A4B 3885000000   */ IL_00E3: br        IL_016D

		/* 0x00002A50 02           */ IL_00E8: ldarg.0
		/* 0x00002A51 283701000A   */ IL_00E9: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorNoMoreTokens()
		/* 0x00002A56 283801000A   */ IL_00EE: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorNoMoreTokensTitle()
		/* 0x00002A5B 286F000006   */ IL_00F3: call      instance void MaxSea.Security.LicensePolicy::ExitWithMessage(string, string)
		/* 0x00002A60 2B73         */ IL_00F8: br.s      IL_016D

		/* 0x00002A62 02           */ IL_00FA: ldarg.0
		/* 0x00002A63 72FC090070   */ IL_00FB: ldstr     "License "
		/* 0x00002A68 02           */ IL_0100: ldarg.0
		/* 0x00002A69 7B25000004   */ IL_0101: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
		/* 0x00002A6E 6F8800000A   */ IL_0106: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
		/* 0x00002A73 727A040070   */ IL_010B: ldstr     "N"
		/* 0x00002A78 6F8900000A   */ IL_0110: callvirt  instance string [MaxSea.Core]MaxSea.Security.PublicIdentity::ToString(string)
		/* 0x00002A7D 720E0A0070   */ IL_0115: ldstr     " automatically removed due to an activation already removed."
		/* 0x00002A82 283B00000A   */ IL_011A: call      string [mscorlib]System.String::Concat(string, string, string)
		/* 0x00002A87 2870000006   */ IL_011F: call      instance void MaxSea.Security.LicensePolicy::ClearInvalidLicenseAndExit(string)
		/* 0x00002A8C 2B47         */ IL_0124: br.s      IL_016D

		/* 0x00002A8E 283901000A   */ IL_0126: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorLicenceNotReferenced()
		/* 0x00002A93 0A           */ IL_012B: stloc.0
		/* 0x00002A94 2B3F         */ IL_012C: br.s      IL_016D

		/* 0x00002A96 02           */ IL_012E: ldarg.0
		/* 0x00002A97 283A01000A   */ IL_012F: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorLicenseHasOlderSoftware()
		/* 0x00002A9C 283B01000A   */ IL_0134: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorLicenseHasOlderSoftwareTitle()
		/* 0x00002AA1 286F000006   */ IL_0139: call      instance void MaxSea.Security.LicensePolicy::ExitWithMessage(string, string)
		/* 0x00002AA6 2B2D         */ IL_013E: br.s      IL_016D

		/* 0x00002AA8 02           */ IL_0140: ldarg.0
		/* 0x00002AA9 283C01000A   */ IL_0141: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorProductDoesNotMatch()
		/* 0x00002AAE 283D01000A   */ IL_0146: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorProductDoesNotMatchTitle()
		/* 0x00002AB3 286F000006   */ IL_014B: call      instance void MaxSea.Security.LicensePolicy::ExitWithMessage(string, string)
		/* 0x00002AB8 2B1B         */ IL_0150: br.s      IL_016D

		/* 0x00002ABA 283200000A   */ IL_0152: call      class [mscorlib]System.Globalization.CultureInfo [mscorlib]System.Globalization.CultureInfo::get_InvariantCulture()
		/* 0x00002ABF 283E01000A   */ IL_0157: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_AutomaticActivationErrorGeneric()
		/* 0x00002AC4 02           */ IL_015C: ldarg.0
		/* 0x00002AC5 7B2A000004   */ IL_015D: ldfld     int32 MaxSea.Security.LicensePolicy::_ErrorCode
		/* 0x00002ACA 8CF1000001   */ IL_0162: box       [mscorlib]System.Int32
		/* 0x00002ACF 283F01000A   */ IL_0167: call      string [mscorlib]System.String::Format(class [mscorlib]System.IFormatProvider, string, object)
		/* 0x00002AD4 0A           */ IL_016C: stloc.0

		/* 0x00002AD5 284001000A   */ IL_016D: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_ContactInformationBegin()
		/* 0x00002ADA 0B           */ IL_0172: stloc.1
		/* 0x00002ADB 283200000A   */ IL_0173: call      class [mscorlib]System.Globalization.CultureInfo [mscorlib]System.Globalization.CultureInfo::get_InvariantCulture()
		/* 0x00002AE0 72DA0B0070   */ IL_0178: ldstr     "{0}{1}{2}"
		/* 0x00002AE5 07           */ IL_017D: ldloc.1
		/* 0x00002AE6 284101000A   */ IL_017E: call      string [mscorlib]System.Environment::get_NewLine()
		/* 0x00002AEB 284201000A   */ IL_0183: call      string [MaxSea.SmartDesktop]MaxSea.SmartDesktop.Security.Resources.Security::get_ContactInformationEndOrder()
		/* 0x00002AF0 284301000A   */ IL_0188: call      string [mscorlib]System.String::Format(class [mscorlib]System.IFormatProvider, string, object, object, object)
		/* 0x00002AF5 0B           */ IL_018D: stloc.1
		/* 0x00002AF6 02           */ IL_018E: ldarg.0
		/* 0x00002AF7 7B25000004   */ IL_018F: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
		/* 0x00002AFC 6F8800000A   */ IL_0194: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
		/* 0x00002B01 727A040070   */ IL_0199: ldstr     "N"
		/* 0x00002B06 6F8900000A   */ IL_019E: callvirt  instance string [MaxSea.Core]MaxSea.Security.PublicIdentity::ToString(string)
		/* 0x00002B0B 02           */ IL_01A3: ldarg.0
		/* 0x00002B0C 7B2B000004   */ IL_01A4: ldfld     class MaxSea.Security.SECSystem MaxSea.Security.LicensePolicy::_SecSystem
		/* 0x00002B11 6FF2000006   */ IL_01A9: callvirt  instance string MaxSea.Security.SECSystem::ReadOrCreateSiteCode()
		/* 0x00002B16 06           */ IL_01AE: ldloc.0
		/* 0x00002B17 07           */ IL_01AF: ldloc.1
		/* 0x00002B18 734401000A   */ IL_01B0: newobj    instance void [MaxSea.SmartDesktop]MaxSea.Security.UI.SecurityManualActivationInputForm::.ctor(string, string, string, string)
		/* 0x00002B1D 0D           */ IL_01B5: stloc.3
		.try
		{
			/* 0x00002B1E 09           */ IL_01B6: ldloc.3
			/* 0x00002B1F 17           */ IL_01B7: ldc.i4.1
			/* 0x00002B20 17           */ IL_01B8: ldc.i4.1
			/* 0x00002B21 16           */ IL_01B9: ldc.i4.0
			/* 0x00002B22 280801000A   */ IL_01BA: call      valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [MaxSea.ControlsLibrary]MaxSea.ControlsLibrary.WindowsFormsExtensions::ShowDialogWithOverlay(class [System.Windows.Forms]System.Windows.Forms.Form, valuetype [MaxSea.ControlsLibrary]MaxSea.ControlsLibrary.CloseBehavior, bool, bool)
			/* 0x00002B27 17           */ IL_01BF: ldc.i4.1
			/* 0x00002B28 4085000000   */ IL_01C0: bne.un    IL_024A

			/* 0x00002B2D 09           */ IL_01C5: ldloc.3
			/* 0x00002B2E 6F4501000A   */ IL_01C6: callvirt  instance string [MaxSea.SmartDesktop]MaxSea.Security.UI.SecurityManualActivationInputForm::get_ActivationCode()
			/* 0x00002B33 1304         */ IL_01CB: stloc.s   V_4
			/* 0x00002B35 1104         */ IL_01CD: ldloc.s   V_4
			/* 0x00002B37 72CA030070   */ IL_01CF: ldstr     " "
			/* 0x00002B3C 72880A0070   */ IL_01D4: ldstr     ""
			/* 0x00002B41 6F3D00000A   */ IL_01D9: callvirt  instance string [mscorlib]System.String::Replace(string, string)
			/* 0x00002B46 1304         */ IL_01DE: stloc.s   V_4
			/* 0x00002B48 02           */ IL_01E0: ldarg.0
			/* 0x00002B49 7B2B000004   */ IL_01E1: ldfld     class MaxSea.Security.SECSystem MaxSea.Security.LicensePolicy::_SecSystem
			/* 0x00002B4E 1104         */ IL_01E6: ldloc.s   V_4
			/* 0x00002B50 1206         */ IL_01E8: ldloca.s  V_6
			/* 0x00002B52 6FF1000006   */ IL_01EA: callvirt  instance valuetype MaxSea.Security.ActivationCodeValidationStatus MaxSea.Security.SECSystem::CheckActivationCode(string, uint16&)
			/* 0x00002B57 1305         */ IL_01EF: stloc.s   V_5
			/* 0x00002B59 1105         */ IL_01F1: ldloc.s   V_5
			/* 0x00002B5B 2C12         */ IL_01F3: brfalse.s IL_0207

			/* 0x00002B5D 02           */ IL_01F5: ldarg.0
			/* 0x00002B5E 1105         */ IL_01F6: ldloc.s   V_5
			/* 0x00002B60 7D2A000004   */ IL_01F8: stfld     int32 MaxSea.Security.LicensePolicy::_ErrorCode
			/* 0x00002B65 02           */ IL_01FD: ldarg.0
			/* 0x00002B66 2876000006   */ IL_01FE: call      instance bool MaxSea.Security.LicensePolicy::AskUser()
			/* 0x00002B6B 1307         */ IL_0203: stloc.s   V_7
			/* 0x00002B6D DE51         */ IL_0205: leave.s   IL_0258

			/* 0x00002B6F 728A0A0070   */ IL_0207: ldstr     "activationcode.lic"
			/* 0x00002B74 1104         */ IL_020C: ldloc.s   V_4
			/* 0x00002B76 28F9000006   */ IL_020E: call      void MaxSea.Security.SecureBackupApi::SetValue(string, string)
			/* 0x00002B7B 02           */ IL_0213: ldarg.0
			/* 0x00002B7C 17           */ IL_0214: ldc.i4.1
			/* 0x00002B7D 2860000006   */ IL_0215: call      instance void MaxSea.Security.LicensePolicy::set_HasBeenManuallyActivated(bool)
			/* 0x00002B82 72FC090070   */ IL_021A: ldstr     "License "
			/* 0x00002B87 02           */ IL_021F: ldarg.0
			/* 0x00002B88 7B25000004   */ IL_0220: ldfld     class [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy MaxSea.Security.LicensePolicy::_PublicIdentityPolicy
			/* 0x00002B8D 6F8800000A   */ IL_0225: callvirt  instance class [MaxSea.Core]MaxSea.Security.PublicIdentity [MaxSea.Core]MaxSea.Security.IPublicIdentityPolicy::get_PublicIdentity()
			/* 0x00002B92 727A040070   */ IL_022A: ldstr     "N"
			/* 0x00002B97 6F8900000A   */ IL_022F: callvirt  instance string [MaxSea.Core]MaxSea.Security.PublicIdentity::ToString(string)
			/* 0x00002B9C 72EE0B0070   */ IL_0234: ldstr     " manually activated using "
			/* 0x00002BA1 1104         */ IL_0239: ldloc.s   V_4
			/* 0x00002BA3 280A01000A   */ IL_023B: call      string [mscorlib]System.String::Concat(string, string, string, string)
			/* 0x00002BA8 282D01000A   */ IL_0240: call      void [MaxSea.Core]MaxSea.Framework.Logger::Information(string)
			/* 0x00002BAD 17           */ IL_0245: ldc.i4.1
			/* 0x00002BAE 1307         */ IL_0246: stloc.s   V_7
			/* 0x00002BB0 DE0E         */ IL_0248: leave.s   IL_0258

			/* 0x00002BB2 DE0A         */ IL_024A: leave.s   IL_0256
		} // end .try
		finally
		{
			/* 0x00002BB4 09           */ IL_024C: ldloc.3
			/* 0x00002BB5 2C06         */ IL_024D: brfalse.s IL_0255

			/* 0x00002BB7 09           */ IL_024F: ldloc.3
			/* 0x00002BB8 6F1E00000A   */ IL_0250: callvirt  instance void [mscorlib]System.IDisposable::Dispose()

			/* 0x00002BBD DC           */ IL_0255: endfinally
		} // end handler

		/* 0x00002BBE 16           */ IL_0256: ldc.i4.0
		/* 0x00002BBF 2A           */ IL_0257: ret

		/* 0x00002BC0 1107         */ IL_0258: ldloc.s   V_7
		/* 0x00002BC2 2A           */ IL_025A: ret
	} // end of method LicensePolicy::AskUser

	// Properties
	// Token: 0x17000010 RID: 16
	.property instance uint8 CommercialVersion()
	{
		// Token: 0x0600004F RID: 79 RVA: 0x00003DCA File Offset: 0x00001FCA
		.get instance uint8 MaxSea.Security.LicensePolicy::get_CommercialVersion()
	}
	// Token: 0x17000011 RID: 17
	.property instance valuetype [mscorlib]System.DateTime EndDate()
	{
		// Token: 0x06000050 RID: 80 RVA: 0x00003DD2 File Offset: 0x00001FD2
		.get instance valuetype [mscorlib]System.DateTime MaxSea.Security.LicensePolicy::get_EndDate()
	}
	// Token: 0x17000012 RID: 18
	.property instance bool IsPresent()
	{
		// Token: 0x06000051 RID: 81 RVA: 0x00003DDF File Offset: 0x00001FDF
		.get instance bool MaxSea.Security.LicensePolicy::get_IsPresent()
	}
	// Token: 0x17000013 RID: 19
	.property instance bool IsTrustworthy()
	{
		// Token: 0x06000052 RID: 82 RVA: 0x00003DEC File Offset: 0x00001FEC
		.get instance bool MaxSea.Security.LicensePolicy::get_IsTrustworthy()
	}
	// Token: 0x17000014 RID: 20
	.property instance bool IsValid()
	{
		// Token: 0x06000053 RID: 83 RVA: 0x00003DF9 File Offset: 0x00001FF9
		.get instance bool MaxSea.Security.LicensePolicy::get_IsValid()
		// Token: 0x06000054 RID: 84 RVA: 0x00003E01 File Offset: 0x00002001
		.set instance void MaxSea.Security.LicensePolicy::set_IsValid(bool)
	}
	// Token: 0x17000015 RID: 21
	.property instance bool CanAcquire()
	{
		// Token: 0x06000055 RID: 85 RVA: 0x00003E0A File Offset: 0x0000200A
		.get instance bool MaxSea.Security.LicensePolicy::get_CanAcquire()
		// Token: 0x06000056 RID: 86 RVA: 0x00003E12 File Offset: 0x00002012
		.set instance void MaxSea.Security.LicensePolicy::set_CanAcquire(bool)
	}
	// Token: 0x17000016 RID: 22
	.property instance bool CanMove()
	{
		// Token: 0x06000057 RID: 87 RVA: 0x00003E1B File Offset: 0x0000201B
		.get instance bool MaxSea.Security.LicensePolicy::get_CanMove()
		// Token: 0x06000058 RID: 88 RVA: 0x00003E23 File Offset: 0x00002023
		.set instance void MaxSea.Security.LicensePolicy::set_CanMove(bool)
	}
	// Token: 0x17000017 RID: 23
	.property instance bool CanRemove()
	{
		// Token: 0x06000059 RID: 89 RVA: 0x00003E2C File Offset: 0x0000202C
		.get instance bool MaxSea.Security.LicensePolicy::get_CanRemove()
		// Token: 0x0600005A RID: 90 RVA: 0x00003E34 File Offset: 0x00002034
		.set instance void MaxSea.Security.LicensePolicy::set_CanRemove(bool)
	}
	// Token: 0x17000018 RID: 24
	.property instance bool CanDestroy()
	{
		// Token: 0x0600005B RID: 91 RVA: 0x00003E3D File Offset: 0x0000203D
		.get instance bool MaxSea.Security.LicensePolicy::get_CanDestroy()
		// Token: 0x0600005C RID: 92 RVA: 0x00003E45 File Offset: 0x00002045
		.set instance void MaxSea.Security.LicensePolicy::set_CanDestroy(bool)
	}
	// Token: 0x17000019 RID: 25
	.property instance valuetype [MaxSea.Core]MaxSea.Security.LimitationType Limitation()
	{
		// Token: 0x0600005D RID: 93 RVA: 0x00003E4E File Offset: 0x0000204E
		.get instance valuetype [MaxSea.Core]MaxSea.Security.LimitationType MaxSea.Security.LicensePolicy::get_Limitation()
		// Token: 0x0600005E RID: 94 RVA: 0x00003E56 File Offset: 0x00002056
		.set instance void MaxSea.Security.LicensePolicy::set_Limitation(valuetype [MaxSea.Core]MaxSea.Security.LimitationType)
	}
	// Token: 0x1700001A RID: 26
	.property instance bool HasBeenManuallyActivated()
	{
		// Token: 0x0600005F RID: 95 RVA: 0x00003E5F File Offset: 0x0000205F
		.get instance bool MaxSea.Security.LicensePolicy::get_HasBeenManuallyActivated()
		// Token: 0x06000060 RID: 96 RVA: 0x00003E67 File Offset: 0x00002067
		.set instance void MaxSea.Security.LicensePolicy::set_HasBeenManuallyActivated(bool)
	}

} // end of class MaxSea.Security.LicensePolicy
