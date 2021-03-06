// This file was generated by Mendix Business Modeler 5.0.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package myfirstmodule.proxies.microflows;

import java.util.HashMap;
import java.util.Map;
import com.mendix.core.Core;
import com.mendix.core.CoreException;
import com.mendix.systemwideinterfaces.MendixRuntimeException;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixObject;

public class Microflows
{
	// These are the microflows for the MyFirstModule module

	public static boolean iVK_CommitAndResetAppFlow(IContext context, myfirstmodule.proxies.AppFlow _appFlow)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("AppFlow", _appFlow == null ? null : _appFlow.getMendixObject());
			return (Boolean)Core.execute(context, "MyFirstModule.IVK_CommitAndResetAppFlow", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}

	public static boolean iVK_CommitAppFlow(IContext context, myfirstmodule.proxies.AppFlow _appFlow)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("AppFlow", _appFlow == null ? null : _appFlow.getMendixObject());
			return (Boolean)Core.execute(context, "MyFirstModule.IVK_CommitAppFlow", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}

	public static myfirstmodule.proxies.AppFlow iVK_CreateAppFlow(IContext context)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			IMendixObject result = (IMendixObject)Core.execute(context, "MyFirstModule.IVK_CreateAppFlow", params);
			return result == null ? null : myfirstmodule.proxies.AppFlow.initialize(context, result);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}

	public static boolean iVK_CreateCarColorImage(IContext context, myfirstmodule.proxies.CarColor _colorCar)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("ColorCar", _colorCar == null ? null : _colorCar.getMendixObject());
			return (Boolean)Core.execute(context, "MyFirstModule.IVK_CreateCarColorImage", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}

	public static boolean iVK_CreateCarImage(IContext context, myfirstmodule.proxies.Car _car)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("Car", _car == null ? null : _car.getMendixObject());
			return (Boolean)Core.execute(context, "MyFirstModule.IVK_CreateCarImage", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}

	public static boolean iVK_CreateCoachworkImage(IContext context, myfirstmodule.proxies.Coachwork _coachwork)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("Coachwork", _coachwork == null ? null : _coachwork.getMendixObject());
			return (Boolean)Core.execute(context, "MyFirstModule.IVK_CreateCoachworkImage", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}

	public static boolean iVK_DeleteCarColorImage(IContext context, myfirstmodule.proxies.CarColor _colorCar)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("ColorCar", _colorCar == null ? null : _colorCar.getMendixObject());
			return (Boolean)Core.execute(context, "MyFirstModule.IVK_DeleteCarColorImage", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}

	public static boolean iVK_DeleteCarInternalImage(IContext context, myfirstmodule.proxies.Car _car)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("Car", _car == null ? null : _car.getMendixObject());
			return (Boolean)Core.execute(context, "MyFirstModule.IVK_DeleteCarInternalImage", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}

	public static boolean iVK_DeleteCoachworkImage(IContext context, myfirstmodule.proxies.Coachwork _coachwork)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("Coachwork", _coachwork == null ? null : _coachwork.getMendixObject());
			return (Boolean)Core.execute(context, "MyFirstModule.IVK_DeleteCoachworkImage", params);
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}

	public static java.util.List<myfirstmodule.proxies.Car> iVK_GetCarList(IContext context, myfirstmodule.proxies.AppFlow _appFlow)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("AppFlow", _appFlow == null ? null : _appFlow.getMendixObject());
			java.util.List<IMendixObject> objs = Core.execute(context, "MyFirstModule.IVK_GetCarList", params);
			java.util.List<myfirstmodule.proxies.Car> result = null;
			if (objs != null)
			{
				result = new java.util.ArrayList<myfirstmodule.proxies.Car>();
				for (IMendixObject obj : objs)
					result.add(myfirstmodule.proxies.Car.initialize(context, obj));
			}
			return result;
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}

	public static java.util.List<myfirstmodule.proxies.Coachwork> iVK_GetCoachworkList(IContext context, myfirstmodule.proxies.AppFlow _appFlow)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("AppFlow", _appFlow == null ? null : _appFlow.getMendixObject());
			java.util.List<IMendixObject> objs = Core.execute(context, "MyFirstModule.IVK_GetCoachworkList", params);
			java.util.List<myfirstmodule.proxies.Coachwork> result = null;
			if (objs != null)
			{
				result = new java.util.ArrayList<myfirstmodule.proxies.Coachwork>();
				for (IMendixObject obj : objs)
					result.add(myfirstmodule.proxies.Coachwork.initialize(context, obj));
			}
			return result;
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}

	public static java.util.List<myfirstmodule.proxies.CarColor> iVK_GetColorCarList(IContext context, myfirstmodule.proxies.AppFlow _appFlow)
	{
		try
		{
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("AppFlow", _appFlow == null ? null : _appFlow.getMendixObject());
			java.util.List<IMendixObject> objs = Core.execute(context, "MyFirstModule.IVK_GetColorCarList", params);
			java.util.List<myfirstmodule.proxies.CarColor> result = null;
			if (objs != null)
			{
				result = new java.util.ArrayList<myfirstmodule.proxies.CarColor>();
				for (IMendixObject obj : objs)
					result.add(myfirstmodule.proxies.CarColor.initialize(context, obj));
			}
			return result;
		}
		catch (CoreException e)
		{
			throw new MendixRuntimeException(e);
		}
	}
}